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
                <a href="<%= request.getContextPath() %>/hotel?action=1" class="destination-link">
                    <img src="images/Halongbay.jpg" alt="Ha Long Bay" class="destination-image">
                    <div class="destination-info">
                        <h4 class="destination-title">Ha Long Bay</h4>
                        <p class="destination-description">
                            Tr?i nghi?m d?ch v? ??ng c?p th? gi?i ? Vinpearl Resort & Spa Ha Long
                        </p>
                    </div>
                </a>
            </div>
        </div>
    </aside>

    <!-- N?i dung ch�nh -->
    <main class="main-content">
        <!-- Ph?n h�nh ?nh l?n -->
        <h1>TMS Hotel Da Nang Beach</h1>
        <section class="hero-section">
            <img src="Images/TMS.jpg" alt="?� N?ng" class="main-image">

            <div class="image-overlay">
                <h1 class="news-title">TMS Hotel Da Nang Beach m?t n?i ?�ng ?? th? khi ??n ?� N?ng</h1>
                <div class="news-meta">
                    <span>? Top 1 ?i?m ??n y�u th�ch</span>
                    <span>? 50+ ??a ?i?m check-in</span>
                    <span>? M�n ?n ???c ph? v? ?a d?ng</span>

                </div>

            </div>

            <!-- Box booking -->
            <div class="booking-box">
                <div class="price-tag">
                    Ch? t? <br>
                    <span style="font-size: 36px;">120$</span>
                </div>
                <button class="booking-button">
                    ??T TOUR NGAY
                    <span style="display: block; font-size: 14px; margin-top: 5px;">(?u ?�i 15% h�m nay)</span>
                </button>
            </div>
        </section>
        <h1>T?n h??ng d?ch v? ??nh cao, ??ng c?p th? gi?i t?i TMS Hotel Da Nang Beach</h1>
        <h3>T?i sao TMS Hotel Da Nang Beach l� ?i?m ??n l� t??ng?</h3>
        <h4>V? tr� thu?n ti?n:</h4>
        <p class="text-center">TMS Hotel Da Nang Beach t?a l?c t?i v? tr� l� t??ng ? ?� N?ng, ch? c�ch B�i bi?n M? Kh� v�i b??c ch�n v� B�i bi?n B?c M? An 9 ph�t ?i b?, gi�p kh�ch d? d�ng t?n h??ng kh�ng gian bi?n tuy?t v?i. Kh�ch s?n c?ng g?n c�c ?i?m tham quan n?i ti?ng c?a th�nh ph?, nh? B?o t�ng Ch?ng t�ch Chi?n tranh v� Dinh Th?ng Nh?t. V?i v? tr� thu?n l?i, du kh�ch c� th? kh�m ph� c�c ?i?m du l?ch h?p d?n c?a ?� N?ng nh? Trung T�m Th??ng M?i Diamond Plaza hay Ch? H�n, ch? trong v�i ph�t di chuy?n.</p>
        <h4>Ti?n nghi ph�ng:</h4>
        <p class="text-center">TMS Hotel Da Nang Beach c� xe ??p mi?n ph�, h? b?i ngo�i tr?i, trung t�m th? d?c v� nh� h�ng ? ?� N?ng. Ngo�i d?ch v? ph�ng, ch? ngh? n�y c�n c� s�n ch?i tr? em. Ch? ngh? cung c?p l? t�n 24/24, d?ch v? ??a ?�n s�n bay, c�u l?c b? tr? em v� Wi-Fi mi?n ph� ? to�n b? ch? ngh?.</p>
        <p class="text-center">T?t c? c�c c?n t?i TMS Hotel Da Nang Beach ??u ???c trang b? nh?ng ti?n nghi hi?n ??i v� ??y ?? ?? mang l?i s? tho?i m�i t?i ?a cho kh�ch h�ng. M?i ph�ng ??u c� h? th?ng ?i?u h�a kh�ng kh�, gi�p duy tr� kh�ng gian m�t m? v� d? ch?u trong su?t k? ngh?. Khu v?c gh? ng?i ???c thi?t k? r?ng r�i, l� t??ng cho nh?ng bu?i t?i th? gi�n ho?c ti?p kh�ch. TV m�n h�nh ph?ng v?i truy?n h�nh c�p s? l� l?a ch?n tuy?t v?i ?? b?n th??ng th?c nh?ng ch??ng tr�nh y�u th�ch.</p>
        <p class="text-center">Kh�ch t?i TMS Hotel Da Nang Beach c� th? th??ng th?c b?a s�ng th?c ??n buffet ho?c ki?u l?c ??a. ??c bi?t, t?t c? c�c ph�ng ??u ???c trang b? ?m ?un n??c, ph?c v? cho nhu c?u pha tr� ho?c c� ph�. M?t s? ph�ng c�n c� b?p v?i ??y ?? ti?n nghi nh? t? l?nh v� l� vi s�ng, gi�p kh�ch c� th? t? chu?n b? nh?ng b?a ?n nh? t?i ph�ng. Ph�ng kh�ch r?ng r�i v� ???c trang b? b�n l�m vi?c, l� kh�ng gian l� t??ng cho nh?ng ai c?n l�m vi?c trong k? ngh?.</p>
        <p class="text-center">Kh�ch c� th? s? d?ng d?ch v? v?n ph�ng ho?c th? gi�n t?i qu?y bar. Kh�ch s?n c�n cung c?p d?ch v? d?n ph�ng h�ng ng�y v� h? tr? m?i y�u c?u c?a kh�ch, ??m b?o r?ng b?n s? c� m?t k? ngh? th? gi�n v� d? ch?u t?i TMS Hotel Da Nang Beach.</p>
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