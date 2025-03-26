<%@page import="com.servlet.tiasm.model.BookingEntry"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.servlet.tiasm.model.User"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travelmng</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/hotel.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

</head>

<body>
    <header>
<div class="header-top">
    <div class="hotline">HOTLINE: 1900 6750</div>
    
    <%
        // L?y ??i t??ng user t? session
        User user = (User) session.getAttribute("user");
        if (user != null) {
    %>
        <!-- N?u ng??i d�ng ?� ??ng nh?p -->
        <span class="text-sm font-bold">Xin ch�o, <%= user.getEmail() %>!</span>
        <a class="text-sm text-red-500" href="<%= request.getContextPath() %>/logout">??ng xu?t</a>
    <%
        } else {
    %>
        <!-- N?u ng??i d�ng ch?a ??ng nh?p -->
        <a class="text-sm" href="<%= request.getContextPath() %>/login">??ng nh?p</a>
        <a class="text-sm" href="<%= request.getContextPath() %>/register">??ng k�</a>
    <%
        }
    %>
    
    <a class="text-sm" href="#">H??ng d?n</a>
</div>

        <div class="main-header">
            <div class="logo">
                <img src="Images/images.jpg " alt="Hotel Logo">
                <a href="your-target-link.html" class="brand">TravelMng</a> <!-- NEW - ?� ch?nh style -->
            </div>

            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Destination</a></li>
                    <li><a href="#">Restaurant</a></li>
                    <li><a href="#">Hotel</a></li>
                    <li><a href="#">User</a></li>
                    <li><a href="#">Booking</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav>

            <div class="search-box">
                <input type="text" placeholder="T�m ki?m...">
                <button type="submit">??</button>
            </div>
        </div>
    </header>
</body>
<div class="main-container">
    <aside class="sidebar">
        <!-- NEW - Ph?n ?i?m ??n n?i b?t -->
        <div class="sidebar-section">
            <h3 class="sidebar-title">Hotels n?i b?t</h3>

            <!-- ?� N?ng -->
            <div class="destination-card">
                <a href="<%= request.getContextPath() %>/hotel?action=2" class="destination-link">
                    <img src="images/saigon.jpg" alt="Saigon Night Hotel" class="destination-image">
                    <div class="destination-info">
                        <h4 class="destination-title">Saigon Night Hotel</h4>
                        <p class="destination-description">
                            Saigon Night Hotel ??a ?i?m ngh? d??ng ?�ng th? khi ??n S�i G�n
                        </p>
                    </div>
                </a>
            </div>

            <!-- H?i An -->
            <div class="destination-card">
                <a href="<%= request.getContextPath() %>/hotel?action=3" class="destination-link">
                    <img src="images/TMS.jpg" alt="TMS Hotel" class="destination-image">
                    <div class="destination-info">
                        <h4 class="destination-title">TMS Hotel Da Nang Beach</h4>
                        <p class="destination-description">
                            T?n h??ng d?ch v? ??nh cao, ??ng c?p th? gi?i t?i TMS Hotel Da Nang Beach
                        </p>
                    </div>
                </a>
            </div>
        </div>
    </aside>

    <!-- N?i dung ch�nh -->
    <main class="main-content">
        <!-- Ph?n h�nh ?nh l?n -->
        <h1>Vinpearl Resort & Spa Ha Long</h1>
        <section class="hero-section">
            <img src="Images/Halongbay.jpg" alt="H? LongLong" class="main-image">

            <div class="image-overlay">
                <h1 class="news-title">Vinpearl Resort & Spa Ha Long </h1>
                <div class="news-meta">
                    <span>? Top 1 ?i?m ??n y�u th�ch</span>
                    <span>? 50+ ??a ?i?m check-in</span>
                    <span>? M�n ?n ???c ph? v? ?a d?ng</span>

                </div>

            </div>

            <%
    // Ki?m tra session
    if (session.getAttribute("cart") == null) {
        session.setAttribute("cart", new ArrayList<BookingEntry>());
    }
%>

<!-- Box booking -->
<div class="booking-box">
    <div class="price-tag">
        Ch? t? <br>
        <span style="font-size: 36px;">200$</span>
    </div>
    
    <form action="addToCartServlet" method="post">
        <input type="hidden" name="destinationId" value="${destination.id}" />
        <input type="hidden" name="destinationName" value="${destination.name}" />
        <button type="submit" class="booking-button">
            ??T TOUR NGAY
            <span style="display: block; font-size: 14px; margin-top: 5px;">(?u ?�i 15% h�m nay)</span>
        </button>
    </form>
</div>
        </section>
        <h1>Tr?i nghi?m nh?ng d?ch v? ??ng c?p t?i Vinpearl Resort & Spa Ha Long</h1>
        <h3>Vinpearl Resort & Spa ??m ch�m trong v? ??p m� h?n c?a V?nh H? Long</h3>
        <h4>V? tr� thu?n ti?n:</h4>
        <p class="text-center">H�y l�nh kh?i cu?c s?ng th??ng nh?t v� ??m ch�m trong s? sang tr?ng t?i Vinpearl Resort & Spa Ha Long, n?i ch? c�ch b? bi?n c?a V?nh H? Long 5 ph�t ?i thuy?n cao t?c. V?i nh?ng d�y n�i ?� v�i v� c�ng h�ng v? bao quanh, khu ngh? d??ng 5 sao sang tr?ng n�y n?m tr�n m?t h�n ??o ri�ng v� c� ba b�i bi?n ri�ng, nh?ng khu v??n xanh m??t, nh?ng h? b?i ngo�i tr?i v� trong nh� r?ng l?n c�ng m?t spa th? gi�n. Du kh�ch c� th? th??ng th?c c�c m�n ?n Vi?t Nam ho?c qu?c t? ngon t?i m?t trong ba nh� h�ng ho?c ??n gi?n l� th? gi�n trong ph�ng ho?c suite r?ng r�i c� ban c�ng ri�ng, ??ng th?i ng?m nh�n khung c?nh tuy?t ??p. Cho d� du kh�ch ?ang t�m ki?m m?t n?i l�nh m�nh l�ng m?n, k? ngh? gia ?�nh, ch? ngh? sang tr?ng, Vinpearl Resort & Spa Ha Long h?a h?n s? mang ??n m?t tr?i nghi?m kh�ng th? n�o qu�n ???c. S�n bay g?n nh?t l� s�n bay qu?c t? C�t Bi.</p>
        <h4>Ti?n nghi ph�ng:</h4>
        <p class="text-center">M?i ph�ng ngh? t?i Vinpearl Resort & Spa Ha Long ??u ???c trang b? ??y ?? c�c ti?n nghi cao c?p nh?m mang l?i s? tho?i m�i tuy?t ??i cho du kh�ch. C�c ph�ng r?ng r�i ??u c� m�y ?i?u h�a, ban c�ng ri�ng ?? du kh�ch c� th? th? gi�n v� ng?m nh�n khung c?nh tuy?t ??p c?a V?nh H? Long. TV m�n h�nh ph?ng v?i truy?n h�nh c�p, k�t an to�n, minibar v� Wi-Fi mi?n ph� c?ng ???c trang b? trong m?i ph�ng ?? kh�ch c� th? ti?n l?i s? d?ng.</p>
        <p class="text-center">Ph�ng t?m ri�ng hi?n ??i v?i b?n t?m sang tr?ng, v�i sen, m�y s?y t�c v� ?? v? sinh c� nh�n cao c?p ??m b?o mang l?i s? th? gi�n t?i ?a. Nh?ng ti?n nghi trong ph�ng c�n bao g?m m?t chi?c b�n l�m vi?c, t?o ?i?u ki?n cho kh�ch c� th? l�m vi?c ho?c t?n h??ng m?t kh�ng gian y�n t?nh.</p>
        <p class="text-center">Ngo�i ra, m?t s? ph�ng c�n c� c�c d?ch v? cao c?p nh? d?ch v? ph�ng 24/7, gi�p du kh�ch c� th? t?n h??ng nh?ng b?a ?n ngon ngay t?i ph�ng c?a m�nh m� kh�ng c?n ph?i ra ngo�i. C�c suite cao c?p c� th? c� b? b?i ri�ng ho?c b?n t?m jacuzzi ?? mang l?i c?m gi�c th? gi�n tuy?t v?i.</p>
        <p class="text-center">??c bi?t, trung t�m th? d?c hi?n ??i, c�c s�n tennis v� s�n golf g?n ?�, c�ng v?i s�n ch?i ngo�i tr?i v� CLB tr? em c?ng n?m trong s? c�c ti?n nghi m� khu ngh? d??ng cung c?p, ??m b?o r?ng m?i th�nh vi�n trong gia ?�nh ??u c� th? t?n h??ng k? ngh? m?t c�ch tr?n v?n.</p>
        <p class="text-center"><strong>C�c c?p ?�i ??c bi?t th�ch v? tr� xu?t s?c</strong> ? h? cho ?i?m <strong>9,6</strong> khi ?�nh gi� chuy?n ?i hai ng??i.</p>

<h2 class="text-center">C�c ti?n nghi ???c ?a chu?ng nh?t</h2>
<div class="amenities">
    <div class="amenity-item">
        <i class="fas fa-swimmer" style="color: #0056b3;"></i> H? b?i ngo�i tr?i
    </div>
    <div class="amenity-item">
        <i class="fas fa-wifi" style="color: #0056b3;"></i> WiFi mi?n ph�
    </div>
    <div class="amenity-item">
        <i class="fas fa-shuttle-van" style="color: #0056b3;"></i> Xe ??a ?�n s�n bay
    </div>
    <div class="amenity-item">
        <i class="fas fa-users" style="color: #0056b3;"></i> Ph�ng gia ?�nh
    </div>
    <div class="amenity-item">
        <i class="fas fa-umbrella-beach" style="color: #0056b3;"></i> Gi�p bi?n
    </div>
    <div class="amenity-item">
        <i class="fas fa-spa" style="color: #0056b3;"></i> Trung t�m Spa & ch?m s�c s?c kh?e
    </div>
    <div class="amenity-item">
        <i class="fas fa-dumbbell" style="color: #0056b3;"></i> Trung t�m th? d?c
    </div>
    <div class="amenity-item">
        <i class="fas fa-smoking-ban" style="color: #0056b3;"></i> Ph�ng kh�ng h�t thu?c
    </div>
    <div class="amenity-item">
        <i class="fas fa-cocktail" style="color:#0056b3;"></i> Qu?y bar
    </div>
    <div class="amenity-item">
        <i class="fas fa-utensils" style="color: #0056b3;"></i> B?a s�ng tuy?t h?o
    </div>
</div>
        <section class="comment-section">
            <div class="comment-header">
                <h3>B�nh lu?n c?a b?n:</h3>
            </div>
            <div class="comment-content">
                <form>
                    <label for="name">H? v� t�n:</label>
                    <input type="text" id="name" name="name" required>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>

                    <label for="message">N?i dung:</label>
                    <textarea id="message" name="message" rows="4" required></textarea>

                    <button type="submit" class="submit-button">G?i b�nh lu?n</button>
                </form>
            </div>
        </section>
    </main>
</div>
<footer>
    <div class="footer-links">
        <a href="#">Trang ch?</a>
        <a href="#">Gi?i thi?u</a>
        <a href="#">Tour du l?ch</a>
        <a href="#">Tin t?c</a>
        <a href="#">Li�n h?</a>
        <a href="#">D?ch v?</a>
    </div>
    <div class="footer-content">
        � 2025 BeeTravel | Cung c?p b?i Sapo
    </div>
</footer>
</body>

</html>