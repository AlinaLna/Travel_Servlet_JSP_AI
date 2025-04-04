package com.servlet.tiasm.service;

import com.servlet.tiasm.model.*;
import com.servlet.tiasm.repository.*;

import jakarta.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class CartService {
    private BookingDAO bookingDAO = new BookingDAO();
    private DestinationDAO destinationDAO = new DestinationDAO();
    private HotelDAO hotelDAO = new HotelDAO();
    private RestaurantDAO restaurantDAO = new RestaurantDAO();
    private CustomerDAO customerDAO = new CustomerDAO();

    public List<BookingEntry> getCart(HttpSession session) {
        List<BookingEntry> cart = (List<BookingEntry>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
            session.setAttribute("cart", cart);
        }
        return cart;
    }

public void addToCart(HttpSession session, int serviceId, String serviceType) {
    if (session == null) {
        System.out.println("Session has expired!");
        return;
    }

    List<BookingEntry> cart = getCart(session);

    // ✅ Check if the item already exists
    boolean exists = cart.stream()
        .anyMatch(entry -> entry.getService().getTravelId() == serviceId);

    if (exists) {
        System.out.println("Service ID " + serviceId + " already in cart.");
        return; // Prevent duplicate addition
    }

    BookingEntry entry = null;

    switch (serviceType.toLowerCase()) {
        case "destination":
            Destination destination = destinationDAO.read(serviceId);
            if (destination != null) {
                entry = new BookingEntry(destination, LocalDateTime.now());
            }
            break;
        case "hotel":
            Hotel hotel = hotelDAO.read(serviceId);
            if (hotel != null) {
                entry = new BookingEntry(hotel, LocalDateTime.now(), LocalDateTime.now().plusDays(1));
            }
            break;
        case "restaurant":
            Restaurant restaurant = restaurantDAO.read(serviceId);
            if (restaurant != null) {
                entry = new BookingEntry(restaurant, LocalDateTime.now());
            }
            break;
    }

    if (entry != null) {
        cart.add(entry);
        session.setAttribute("cart", cart);
        System.out.println("Added to cart: serviceId=" + serviceId + ", serviceType=" + serviceType);
    }
}


    public void removeFromCart(HttpSession session, int serviceId) {
        List<BookingEntry> cart = getCart(session);
        cart.removeIf(entry -> entry.getService().getTravelId() == serviceId);
        session.setAttribute("cart", cart);
    }

    public void checkoutCart(HttpSession session) {
        List<BookingEntry> cart = getCart(session);
        User user = (User) session.getAttribute("user");

        if (user == null || cart.isEmpty()) {
            System.out.println("User not logged in or cart empty!");
            return;
        }

        Customer customer = customerDAO.read(user.getId());
        if (customer == null) {
            System.out.println("Customer not found!");
            return;
        }

        BigDecimal totalPrice = calculateTotalPrice(cart);
        Booking booking = new Booking(0, customer, LocalDateTime.now(), new ArrayList<>(cart), totalPrice);
        bookingDAO.insert(booking);

        cart.clear();
        session.setAttribute("cart", cart);
    }

    private BigDecimal calculateTotalPrice(List<BookingEntry> cart) {
    BigDecimal totalPrice = BigDecimal.ZERO;  // Khởi tạo tổng giá trị ban đầu là 0

    // Lặp qua tất cả các mục trong giỏ hàng
    for (BookingEntry entry : cart) {
        BigDecimal servicePrice = BigDecimal.ZERO;  // Khởi tạo giá của mỗi dịch vụ là 0

        // Lấy giá của từng loại dịch vụ
        switch (entry.getServiceType().toLowerCase()) {
            case "destination":
                Destination destination = (Destination) entry.getService();  // Lấy dịch vụ Destination
                if (destination != null) {
                    servicePrice = destination.getPricePerPerson();  // Giả sử rằng Destination có thuộc tính price
                }
                break;
            case "hotel":
                Hotel hotel = (Hotel) entry.getService();  // Lấy dịch vụ Hotel
                if (hotel != null) {
                    servicePrice = hotel.getPricePerPerson();  // Giả sử rằng Hotel có thuộc tính price
                }
                break;
            case "restaurant":
                Restaurant restaurant = (Restaurant) entry.getService();  // Lấy dịch vụ Restaurant
                if (restaurant != null) {
                    servicePrice = restaurant.getPricePerPerson();  // Giả sử rằng Restaurant có thuộc tính price
                }
                break;
        }

        // Cộng giá của dịch vụ vào tổng giá
        totalPrice = totalPrice.add(servicePrice);
    }

    return totalPrice;  // Trả về tổng giá trị của giỏ hàng
}
    

}
