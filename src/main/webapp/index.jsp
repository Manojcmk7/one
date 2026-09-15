<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop · friendly e‑commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    /* ===== USER‑FRIENDLY REIMAGINED UI ===== */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #f9fafb;
      --bg-card: #ffffff;
      --primary: #1e293b;
      --primary-soft: #334155;
      --accent: #e07a5f;
      --accent-soft: #fce9e4;
      --accent-dark: #c05a3e;
      --muted: #64748b;
      --muted-light: #94a3b8;
      --surface: #f1f5f9;
      --border: #e2e8f0;
      --success: #10b981;
      --warning: #f59e0b;
      --radius: 20px;
      --radius-sm: 12px;
      --shadow-sm: 0 2px 8px rgba(0, 0, 0, 0.02), 0 4px 12px rgba(0, 0, 0, 0.03);
      --shadow: 0 8px 24px rgba(0, 0, 0, 0.04), 0 2px 6px rgba(0, 0, 0, 0.02);
      --shadow-lg: 0 20px 40px -12px rgba(0, 0, 0, 0.15);
      --transition: all 0.2s ease;
      --container: 1280px;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    img {
      max-width: 100%;
      display: block;
    }

    button {
      cursor: pointer;
      font-family: inherit;
      border: none;
      background: none;
    }

    .container {
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ===== BUTTONS ===== */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.95rem;
      transition: var(--transition);
      border: 2px solid transparent;
      white-space: nowrap;
    }

    .btn-primary {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
    }

    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-2px);
      box-shadow: 0 12px 20px -10px rgba(224, 122, 95, 0.4);
    }

    .btn-secondary {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
    }

    .btn-secondary:hover {
      background: var(--primary-soft);
      border-color: var(--primary-soft);
      transform: translateY(-2px);
      box-shadow: 0 12px 20px -10px rgba(30, 41, 59, 0.3);
    }

    .btn-outline {
      background: transparent;
      color: var(--primary);
      border-color: var(--border);
    }

    .btn-outline:hover {
      background: var(--surface);
      border-color: var(--muted-light);
      transform: translateY(-2px);
    }

    .btn-ghost {
      background: rgba(255, 255, 255, 0.15);
      color: #fff;
      border-color: rgba(255, 255, 255, 0.25);
      backdrop-filter: blur(4px);
    }

    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.25);
      border-color: rgba(255, 255, 255, 0.4);
      transform: translateY(-2px);
    }

    .btn-sm {
      padding: 8px 18px;
      font-size: 0.85rem;
    }

    /* ===== HEADER ===== */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255, 255, 255, 0.94);
      backdrop-filter: blur(16px);
      -webkit-backdrop-filter: blur(16px);
      border-bottom: 1px solid var(--border);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 12px 0;
      min-height: 72px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 800;
      font-size: 1.4rem;
      letter-spacing: -0.5px;
      color: var(--primary);
      flex-shrink: 0;
    }

    .brand i {
      font-size: 1.8rem;
      color: var(--accent);
    }

    .brand .accent {
      color: var(--accent);
    }

    nav.main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
      align-items: center;
    }

    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 8px 18px;
      border-radius: 30px;
      font-weight: 500;
      font-size: 0.9rem;
      color: var(--muted);
      transition: var(--transition);
    }

    nav.main-nav li a:hover,
    nav.main-nav li a.active {
      background: var(--surface);
      color: var(--primary);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
      flex-shrink: 0;
    }

    .icon-btn {
      width: 44px;
      height: 44px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 1.2rem;
      color: var(--muted);
      transition: var(--transition);
      position: relative;
    }

    .icon-btn:hover {
      background: var(--surface);
      color: var(--primary);
    }

    .cart-wrap {
      position: relative;
    }

    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--accent);
      color: #fff;
      font-size: 0.7rem;
      font-weight: 700;
      min-width: 20px;
      height: 20px;
      border-radius: 20px;
      display: grid;
      place-items: center;
      padding: 0 6px;
      border: 2px solid #fff;
      transition: transform 0.2s ease;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 40px;
      padding: 0 16px 0 20px;
      transition: var(--transition);
      border: 2px solid transparent;
      min-width: 240px;
    }

    .search-wrap:focus-within {
      border-color: var(--accent);
      background: #fff;
      box-shadow: 0 0 0 4px rgba(224, 122, 95, 0.12);
    }

    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 10px 0;
      font-size: 0.9rem;
      color: var(--primary);
    }

    .search-wrap input::placeholder {
      color: var(--muted-light);
      font-weight: 400;
    }

    .search-wrap button {
      padding: 8px 0 8px 12px;
      color: var(--muted);
      font-size: 1rem;
      transition: var(--transition);
    }

    .search-wrap button:hover {
      color: var(--accent);
    }

    .mobile-toggle {
      display: none;
      width: 44px;
      height: 44px;
      border-radius: 50%;
      font-size: 1.3rem;
      background: var(--surface);
      color: var(--primary);
      transition: var(--transition);
      place-items: center;
    }

    .mobile-toggle:hover {
      background: var(--accent-soft);
    }

    #mobileMenu {
      display: none;
      background: #fff;
      border-top: 1px solid var(--border);
      padding: 12px 0 24px;
    }

    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }

    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 14px;
      padding: 14px 18px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      color: var(--primary);
      transition: var(--transition);
      font-size: 1rem;
    }

    #mobileMenu ul li a:hover {
      background: var(--surface);
    }

    #mobileMenu ul li a i {
      width: 24px;
      color: var(--muted);
    }

    /* ===== HERO – more friendly and inviting ===== */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 520px;
      padding: 80px 0;
      border-radius: 32px;
      overflow: hidden;
      margin: 28px 24px 0;
      background: linear-gradient(135deg, #1e293b 0%, #2d3a4e 100%);
      box-shadow: var(--shadow-lg);
    }

    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.3;
      z-index: 0;
    }

    .hero .container {
      position: relative;
      z-index: 1;
    }

    .hero .badge {
      display: inline-block;
      background: rgba(224, 122, 95, 0.25);
      color: #fff;
      backdrop-filter: blur(8px);
      padding: 6px 18px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.85rem;
      letter-spacing: 0.3px;
      margin-bottom: 20px;
      border: 1px solid rgba(255, 255, 255, 0.15);
    }

    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: 3.8rem;
      font-weight: 700;
      color: #fff;
      line-height: 1.15;
      max-width: 700px;
      margin-bottom: 18px;
    }

    .hero p {
      color: rgba(255, 255, 255, 0.85);
      font-size: 1.15rem;
      max-width: 550px;
      margin-bottom: 32px;
      line-height: 1.6;
    }

    .hero .actions {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }

    /* ===== SECTIONS ===== */
    .section {
      padding: 64px 0;
    }

    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 20px;
      margin-bottom: 40px;
      flex-wrap: wrap;
    }

    .section-header .title-group h2 {
      font-size: 2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
    }

    .section-header .title-group p {
      color: var(--muted);
      margin-top: 6px;
      font-size: 1rem;
    }

    .section-header .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 0.95rem;
      transition: var(--transition);
      white-space: nowrap;
    }

    .section-header .view-all:hover {
      gap: 12px;
      color: var(--accent-dark);
    }

    /* ===== CATEGORIES – bigger icons, friendly hover ===== */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }

    .cat-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 28px 16px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid var(--border);
    }

    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-lg);
      border-color: var(--accent-soft);
    }

    .cat-card .icon-wrap {
      width: 64px;
      height: 64px;
      border-radius: 20px;
      background: var(--accent-soft);
      display: grid;
      place-items: center;
      margin: 0 auto 14px;
      font-size: 1.8rem;
      color: var(--accent);
      transition: var(--transition);
    }

    .cat-card:hover .icon-wrap {
      background: var(--accent);
      color: #fff;
      transform: scale(1.05);
    }

    .cat-card h4 {
      font-size: 1rem;
      font-weight: 600;
    }

    .cat-card .count {
      font-size: 0.85rem;
      color: var(--muted);
      margin-top: 4px;
    }

    /* ===== PRODUCTS – friendlier cards ===== */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }

    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid var(--border);
    }

    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-lg);
      border-color: var(--accent-soft);
    }

    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--surface);
      aspect-ratio: 1 / 1;
    }

    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.3s ease;
    }

    .product-card:hover .img-wrap img {
      transform: scale(1.04);
    }

    .product-card .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--accent);
      color: #fff;
      padding: 6px 14px;
      border-radius: 40px;
      font-size: 0.7rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.3px;
    }

    .product-card .badge.sale {
      background: var(--warning);
      color: var(--primary);
    }

    .product-card .wish-btn {
      position: absolute;
      top: 14px;
      right: 14px;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.9);
      display: grid;
      place-items: center;
      font-size: 1.1rem;
      color: var(--muted);
      transition: var(--transition);
      backdrop-filter: blur(4px);
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.04);
    }

    .product-card .wish-btn:hover {
      background: #fff;
      color: var(--accent);
      transform: scale(1.08);
    }

    .product-card .body {
      padding: 18px 18px 12px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }

    .product-card .body .category-tag {
      font-size: 0.75rem;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.5px;
      font-weight: 600;
    }

    .product-card .body h5 {
      font-size: 1rem;
      font-weight: 600;
      line-height: 1.4;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }

    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 4px;
    }

    .product-card .body .price {
      font-weight: 700;
      font-size: 1.25rem;
      color: var(--primary);
    }

    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 0.9rem;
    }

    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 0.9rem;
      color: #f5a623;
    }

    .product-card .body .rating span {
      color: var(--muted);
      font-weight: 400;
    }

    .product-card .footer {
      padding: 0 18px 18px;
      display: flex;
      gap: 12px;
    }

    .product-card .footer .add-btn {
      flex: 1;
      padding: 12px;
      border-radius: var(--radius-sm);
      background: var(--primary);
      color: #fff;
      font-weight: 600;
      font-size: 0.9rem;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      border-radius: 40px;
    }

    .product-card .footer .add-btn:hover {
      background: var(--accent);
      transform: scale(1.02);
      box-shadow: 0 8px 16px -8px rgba(224, 122, 95, 0.4);
    }

    .product-card .footer .add-btn.added {
      background: var(--success);
    }

    /* ===== DEAL ===== */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      border: 1px solid var(--border);
    }

    .deal-wrap .deal-img {
      flex: 0 0 48%;
      background: var(--surface);
      min-height: 340px;
    }

    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .deal-wrap .deal-content {
      flex: 1;
      padding: 48px 52px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal-wrap .deal-content .tag {
      display: inline-block;
      background: var(--warning);
      color: var(--primary);
      padding: 6px 16px;
      border-radius: 40px;
      font-size: 0.75rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      align-self: flex-start;
      margin-bottom: 16px;
    }

    .deal-wrap .deal-content h3 {
      font-size: 2.2rem;
      font-weight: 700;
      margin-bottom: 8px;
    }

    .deal-wrap .deal-content .desc {
      color: var(--muted);
      margin-bottom: 20px;
      font-size: 1.05rem;
    }

    .deal-wrap .deal-content .price-big {
      font-size: 2.6rem;
      font-weight: 800;
      color: var(--primary);
    }

    .deal-wrap .deal-content .price-big .old {
      font-size: 1.4rem;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 12px;
    }

    .deal-wrap .deal-content .stock {
      font-size: 0.95rem;
      color: var(--muted);
      margin: 6px 0 20px;
    }

    .deal-wrap .deal-content .stock strong {
      color: var(--accent);
    }

    .timer-grid {
      display: flex;
      gap: 14px;
      margin: 20px 0 24px;
    }

    .timer-box {
      background: var(--primary);
      color: #fff;
      padding: 14px 18px;
      border-radius: 16px;
      min-width: 80px;
      text-align: center;
      box-shadow: var(--shadow-sm);
    }

    .timer-box .num {
      font-size: 1.8rem;
      font-weight: 700;
      line-height: 1.2;
    }

    .timer-box .label {
      font-size: 0.7rem;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }

    /* ===== TESTIMONIALS ===== */
    .testimonials-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }

    .testimonials-scroll::-webkit-scrollbar {
      height: 4px;
    }

    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--accent-soft);
      border-radius: 10px;
    }

    .testimonial-card {
      flex: 0 0 360px;
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 28px 30px;
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
      transition: var(--transition);
      border: 1px solid var(--border);
    }

    .testimonial-card:hover {
      box-shadow: var(--shadow-lg);
    }

    .testimonial-card .stars {
      color: #f5a623;
      font-size: 1rem;
      letter-spacing: 2px;
      margin-bottom: 12px;
    }

    .testimonial-card blockquote {
      font-size: 1rem;
      line-height: 1.7;
      color: var(--primary);
      margin-bottom: 18px;
      font-style: italic;
    }

    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 14px;
    }

    .testimonial-card .author .avatar {
      width: 48px;
      height: 48px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--surface);
    }

    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 0.95rem;
    }

    .testimonial-card .author .role {
      font-size: 0.85rem;
      color: var(--muted);
    }

    /* ===== NEWSLETTER ===== */
    .newsletter-wrap {
      background: linear-gradient(135deg, var(--primary) 0%, var(--primary-soft) 100%);
      border-radius: 28px;
      padding: 52px 60px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      flex-wrap: wrap;
      box-shadow: var(--shadow-lg);
    }

    .newsletter-wrap .text h3 {
      font-size: 1.8rem;
      font-weight: 700;
      margin-bottom: 6px;
    }

    .newsletter-wrap .text p {
      opacity: 0.8;
      font-size: 1rem;
    }

    .newsletter-wrap form {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 500px;
    }

    .newsletter-wrap form input {
      flex: 1;
      min-width: 220px;
      padding: 16px 24px;
      border-radius: 40px;
      border: 0;
      font-size: 0.95rem;
      background: rgba(255, 255, 255, 0.12);
      color: #fff;
      transition: var(--transition);
      outline: 2px solid transparent;
    }

    .newsletter-wrap form input::placeholder {
      color: rgba(255, 255, 255, 0.55);
    }

    .newsletter-wrap form input:focus {
      outline-color: var(--accent);
      background: rgba(255, 255, 255, 0.18);
    }

    .newsletter-wrap form .btn {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      padding: 16px 36px;
    }

    .newsletter-wrap form .btn:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
    }

    #newsletterMsg {
      margin-top: 14px;
      font-size: 0.95rem;
      opacity: 0.95;
      width: 100%;
      font-weight: 500;
    }

    /* ===== FOOTER ===== */
    footer {
      margin-top: 32px;
      padding: 56px 0 32px;
      border-top: 1px solid var(--border);
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 40px;
    }

    .footer-grid .brand-col .brand {
      font-size: 1.5rem;
      margin-bottom: 12px;
    }

    .footer-grid .brand-col p {
      color: var(--muted);
      font-size: 0.95rem;
      max-width: 320px;
      line-height: 1.7;
    }

    .footer-grid .brand-col .socials {
      display: flex;
      gap: 12px;
      margin-top: 20px;
    }

    .footer-grid .brand-col .socials a {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: var(--surface);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
      font-size: 1.1rem;
    }

    .footer-grid .brand-col .socials a:hover {
      background: var(--accent);
      color: #fff;
      transform: translateY(-3px);
    }

    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 1rem;
      margin-bottom: 16px;
      color: var(--primary);
    }

    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }

    .footer-grid .col ul li a {
      color: var(--muted);
      font-size: 0.95rem;
      transition: var(--transition);
    }

    .footer-grid .col ul li a:hover {
      color: var(--accent);
      padding-left: 4px;
    }

    .footer-bottom {
      text-align: center;
      padding-top: 28px;
      border-top: 1px solid var(--border);
      color: var(--muted-light);
      font-size: 0.9rem;
    }

    /* ===== RESPONSIVE ===== */
    @media (max-width: 1200px) {
      .products-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .categories-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .footer-grid {
        grid-template-columns: 1fr 1fr;
        gap: 32px;
      }
    }

    @media (max-width: 992px) {
      .hero h1 {
        font-size: 2.8rem;
      }
      .hero {
        min-height: 400px;
        margin: 18px 18px 0;
        padding: 48px 0;
        border-radius: 24px;
      }
      .deal-wrap {
        flex-direction: column;
      }
      .deal-wrap .deal-img {
        flex: 0 0 260px;
      }
      .deal-wrap .deal-content {
        padding: 32px 34px;
      }
      .newsletter-wrap {
        padding: 40px 36px;
        flex-direction: column;
        text-align: center;
      }
      .newsletter-wrap form {
        max-width: 100%;
      }
      .search-wrap {
        min-width: 180px;
      }
    }

    @media (max-width: 768px) {
      nav.main-nav {
        display: none;
      }
      .mobile-toggle {
        display: grid;
      }
      .products-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 16px;
      }
      .categories-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 14px;
      }
      .hero h1 {
        font-size: 2.2rem;
      }
      .hero p {
        font-size: 1rem;
      }
      .section-header h2 {
        font-size: 1.6rem;
      }
      .deal-wrap .deal-content h3 {
        font-size: 1.8rem;
      }
      .deal-wrap .deal-content .price-big {
        font-size: 2rem;
      }
      .timer-box {
        min-width: 64px;
        padding: 10px 14px;
      }
      .timer-box .num {
        font-size: 1.4rem;
      }
      .footer-grid {
        grid-template-columns: 1fr;
        gap: 28px;
      }
      .header-inner {
        flex-wrap: nowrap;
      }
      .brand {
        font-size: 1.2rem;
      }
      .brand i {
        font-size: 1.5rem;
      }
      .search-wrap {
        min-width: 140px;
        padding: 0 12px 0 16px;
      }
      .search-wrap input {
        font-size: 0.85rem;
        padding: 8px 0;
      }
      .icon-btn {
        width: 40px;
        height: 40px;
        font-size: 1rem;
      }
      .cart-count {
        min-width: 18px;
        height: 18px;
        font-size: 0.65rem;
      }
      .testimonial-card {
        flex: 0 0 300px;
      }
      .section {
        padding: 44px 0;
      }
      .hero .actions .btn {
        padding: 12px 24px;
        font-size: 0.9rem;
      }
    }

    @media (max-width: 480px) {
      .products-grid {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }
      .categories-grid {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }
      .hero {
        margin: 12px 12px 0;
        min-height: 340px;
        padding: 36px 0;
        border-radius: 20px;
      }
      .hero h1 {
        font-size: 1.8rem;
      }
      .container {
        padding: 0 16px;
      }
      .deal-wrap .deal-content {
        padding: 24px 20px;
      }
      .deal-wrap .deal-img {
        flex: 0 0 200px;
      }
      .newsletter-wrap {
        padding: 28px 20px;
      }
      .newsletter-wrap .text h3 {
        font-size: 1.5rem;
      }
      .product-card .body {
        padding: 14px 14px 8px;
      }
      .product-card .body h5 {
        font-size: 0.9rem;
      }
      .product-card .body .price {
        font-size: 1.1rem;
      }
      .product-card .footer {
        padding: 0 14px 14px;
      }
      .product-card .footer .add-btn {
        font-size: 0.8rem;
        padding: 10px;
      }
      .timer-box {
        min-width: 54px;
        padding: 8px 10px;
      }
      .timer-box .num {
        font-size: 1.2rem;
      }
      .timer-box .label {
        font-size: 0.6rem;
      }
      .cat-card {
        padding: 20px 12px;
      }
      .cat-card .icon-wrap {
        width: 52px;
        height: 52px;
        font-size: 1.4rem;
      }
      .cat-card h4 {
        font-size: 0.9rem;
      }
    }
  </style>
</head>
<body>

  <!-- ===== HEADER ===== -->
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:10px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
          <i class="fas fa-bars"></i>
        </button>
        <a class="brand" href="#">
          <i class="fas fa-store-alt"></i>
          <span>Nexus<span class="accent">Shop</span></span>
        </a>
      </div>

      <nav class="main-nav" aria-label="Main navigation">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li
