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
                <a href="tmsHotel.html" class="destination-link">
                    <img src="images/TMS.jpg" alt="TMS Hotel" class="destination-image">
                    <div class="destination-info">
                        <h4 class="destination-title">TMS Hotel Da Nang Beach</h4>
                        <p class="destination-description">
                            T?n h??ng d?ch v? ??nh cao, ??ng c?p th? gi?i t?i TMS Hotel Da Nang Beach
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
        <h1>Sai Gon Night Hotel</h1>
        <section class="hero-section">
            <img src="Images/saigon.jpg" alt="Sai Gon Night Hotel" class="main-image">

            <div class="image-overlay">
                <h1 class="news-title">Sai Gon Night Hotel m?t n?i v?i nh?ng d?ch v? ?a d?ng v� sang tr?ngtr?ng</h1>
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
                    <span style="font-size: 36px;">80$</span>
                </div>
                <button class="booking-button">
                    ??T TOUR NGAY
                    <span style="display: block; font-size: 14px; margin-top: 5px;">(?u ?�i 15% h�m nay)</span>
                </button>
            </div>
        </section>
        <h1>T?n h??ng d?ch v? ?a d?ng, phong ph� v� sang tr?ng t?i Sai Gon Night Hotel</h1>
        <h3>T?i sao Sai Gon Night Hotel l� ?i?m ??n l� t??ng?</h3>
        <h4>V? tr� thu?n ti?n:</h4>
        <p class="text-center">N?m t?i v? tr� thu?n ti?n ? Qu?n Ph� Nhu?n, TP. H�? Chi? Minh, SaiGon Night Hotel mang ??n s? k?t h?p ho�n h?o gi?a s? ti?n nghi v� v? tr� l� t??ng cho nh?ng ai mu?n kh�m ph� th�nh ph? n?ng ??ng n�y. V?i v? tr� ch? c�ch B?o t�ng Ch?ng t�ch chi?n tranh 3.4 km, Dinh Th?ng Nh?t 3.6 km v� Trung T�m Th??ng M?i Diamond Plaza 4 km, kh�ch s?n d? d�ng ti?p c?n c�c ?i?m du l?ch n?i ti?ng c?a th�nh ph?. ??c bi?t, kh�ch s?n c�n ch? c�ch Ch? T�n ??nh 2.4 km, n?i kh�ch c� th? tr?i nghi?m c�c m�n ?n ??c s?n ??a ph??ng v� mua s?m c�c m?t h�ng th? c�ng ??c ?�o.</p>
        <p class="text-center">Kh�ch s?n c?ng ch? c�ch B?u ?i?n Trung t�m 4.1 km v� Ch? B?n Th�nh 4.3 km, n?i b?n c� th? t?n h??ng kh�ng kh� s�i ??ng c?a th�nh ph? v� mua s?m nh?ng m�n qu� l?u ni?m ??c tr?ng.</p>
        <h4>Ti?n nghi ph�ng:</h4>
        <p class="text-center">Kh�ch s?n 3 sao n�y kh�ng ch? n?i b?t v?i d?ch v? ph�ng v� qu?y l? t�n ho?t ??ng 24 gi?, m� c�n cung c?p m�i tr??ng ngh? ng?i tho?i m�i, kh�ng h�t thu?c, ??m b?o kh�ng gian trong l�nh v� y�n t?nh cho kh�ch h�ng.</p>
        <p class="text-center">C�c ph�ng kh�ch t?i SaiGon Night Hotel ??u ???c trang b? ??y ?? ti?n nghi hi?n ??i, bao g?m ?i?u h�a kh�ng kh�, TV m�n h�nh ph?ng v?i c�c k�nh truy?n h�nh v? tinh, v� ?m ?un n??c ?? ph?c v? nhu c?u pha tr� ho?c c� ph�. Ph�ng t?m ri�ng ???c trang b? v�i sen, ?? v? sinh c� nh�n mi?n ph� v� m�y s?y t�c, mang ??n s? ti?n l?i t?i ?a cho kh�ch. B�n l�m vi?c trong m?i ph�ng l� l?a ch?n l� t??ng cho nh?ng kh�ch c� nhu c?u l�m vi?c trong su?t k? ngh?. Ngo�i ra, t?t c? c�c ph�ng ??u c� ga tr?i gi??ng s?ch s? v� tho?i m�i, t?o n�n kh�ng gian ngh? ng?i l� t??ng cho kh�ch.</p>
        <p class="text-center">Kh�ch s?n c?ng cung c?p d?ch v? th? gi�n t?i qu?y bar, n?i b?n c� th? th??ng th?c nh?ng ly ?? u?ng nh? nh�ng, ho?c s? d?ng d?ch v? v?n ph�ng n?u c� c�ng vi?c c?n gi?i quy?t. D� b?n ??n ?? c�ng t�c hay ngh? d??ng, SaiGon Night Hotel ??u l� s? l?a ch?n ho�n h?o cho nh?ng ai mu?n tr?i nghi?m v? ??p c?a TP. H�? Chi? Minh.</p>
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

</html>q