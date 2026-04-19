<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>ShopEase – Flutter E-Commerce App</title>
  <link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;600;700;800&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet"/>
  <style>
    :root {
      --orange: #F6801B;
      --orange-dark: #D4680E;
      --black: #0A0A0A;
      --white: #FFFFFF;
      --grey: #6B7280;
      --light: #F9FAFB;
      --card: #FFFFFF;
      --border: #E5E7EB;
    }

    * { margin: 0; padding: 0; box-sizing: border-box; }

    body {
      font-family: 'Inter', sans-serif;
      background: var(--black);
      color: var(--white);
      line-height: 1.6;
      overflow-x: hidden;
    }

    /* ── HERO ─────────────────────────────────────────────────────── */
    .hero {
      position: relative;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      text-align: center;
      padding: 60px 24px;
      overflow: hidden;
      background: radial-gradient(ellipse 80% 60% at 50% 0%, #F6801B22 0%, transparent 70%),
                  radial-gradient(ellipse 60% 40% at 80% 80%, #F6801B11 0%, transparent 60%),
                  var(--black);
    }

    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background-image: 
        radial-gradient(circle at 20% 30%, rgba(246,128,27,0.08) 0%, transparent 40%),
        radial-gradient(circle at 80% 70%, rgba(246,128,27,0.05) 0%, transparent 40%);
      pointer-events: none;
    }

    /* Grid lines decoration */
    .grid-lines {
      position: absolute;
      inset: 0;
      background-image: 
        linear-gradient(rgba(246,128,27,0.05) 1px, transparent 1px),
        linear-gradient(90deg, rgba(246,128,27,0.05) 1px, transparent 1px);
      background-size: 60px 60px;
      pointer-events: none;
    }

    .badge {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: rgba(246,128,27,0.15);
      border: 1px solid rgba(246,128,27,0.3);
      color: var(--orange);
      font-size: 13px;
      font-weight: 600;
      padding: 8px 18px;
      border-radius: 100px;
      margin-bottom: 28px;
      letter-spacing: 0.5px;
    }

    .logo-icon {
      width: 80px;
      height: 80px;
      background: linear-gradient(135deg, var(--orange), var(--orange-dark));
      border-radius: 22px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 40px;
      margin: 0 auto 28px;
      box-shadow: 0 20px 60px rgba(246,128,27,0.35);
    }

    h1 {
      font-family: 'Syne', sans-serif;
      font-size: clamp(52px, 8vw, 96px);
      font-weight: 800;
      line-height: 0.95;
      letter-spacing: -3px;
      margin-bottom: 12px;
    }

    h1 span { color: var(--orange); }

    .hero-sub {
      font-size: clamp(16px, 2vw, 20px);
      color: rgba(255,255,255,0.5);
      max-width: 560px;
      margin: 16px auto 40px;
      font-weight: 300;
    }

    .hero-chips {
      display: flex;
      flex-wrap: wrap;
      gap: 10px;
      justify-content: center;
      margin-bottom: 52px;
    }

    .chip {
      background: rgba(255,255,255,0.05);
      border: 1px solid rgba(255,255,255,0.1);
      padding: 6px 16px;
      border-radius: 100px;
      font-size: 13px;
      color: rgba(255,255,255,0.7);
    }

    /* ── MOCKUP PHONES ────────────────────────────────────────────── */
    .phones-container {
      display: flex;
      gap: 16px;
      align-items: flex-end;
      justify-content: center;
      padding: 0 20px;
      max-width: 900px;
      margin: 0 auto;
    }

    .phone-frame {
      position: relative;
      background: #1a1a1a;
      border-radius: 44px;
      border: 2px solid rgba(255,255,255,0.1);
      overflow: hidden;
      box-shadow: 0 40px 80px rgba(0,0,0,0.6), 0 0 0 1px rgba(255,255,255,0.05);
      flex-shrink: 0;
    }

    .phone-frame::before {
      content: '';
      position: absolute;
      top: 12px;
      left: 50%;
      transform: translateX(-50%);
      width: 90px;
      height: 28px;
      background: #0A0A0A;
      border-radius: 14px;
      z-index: 10;
    }

    .phone-frame.main { width: 220px; height: 460px; }
    .phone-frame.side { width: 180px; height: 380px; opacity: 0.7; }

    .phone-screen {
      width: 100%;
      height: 100%;
      display: flex;
      flex-direction: column;
      overflow: hidden;
    }

    /* Home Screen mockup */
    .mock-header {
      padding: 52px 16px 12px;
      background: #fff;
    }

    .mock-title { font-size: 10px; font-weight: 700; color: #1a1a1a; font-family: sans-serif; }
    .mock-sub { font-size: 8px; color: #888; font-family: sans-serif; }

    .mock-search {
      margin: 8px 16px;
      background: #f5f5f5;
      border-radius: 10px;
      height: 28px;
      display: flex;
      align-items: center;
      padding: 0 10px;
      gap: 6px;
    }

    .mock-search span { font-size: 7px; color: #bbb; font-family: sans-serif; }

    .mock-banner {
      margin: 8px 16px;
      background: linear-gradient(135deg, #F6801B, #D4680E);
      border-radius: 12px;
      height: 80px;
      padding: 12px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .mock-banner-title { font-size: 12px; font-weight: 700; color: #fff; font-family: sans-serif; }
    .mock-banner-sub { font-size: 7px; color: rgba(255,255,255,0.8); font-family: sans-serif; margin-top: 2px; }
    .mock-shop-btn {
      margin-top: 6px;
      display: inline-block;
      background: #fff;
      color: #F6801B;
      font-size: 6px;
      font-weight: 700;
      padding: 3px 8px;
      border-radius: 10px;
      font-family: sans-serif;
      width: fit-content;
    }

    .mock-section-title {
      padding: 8px 16px 4px;
      font-size: 9px;
      font-weight: 700;
      color: #1a1a1a;
      font-family: sans-serif;
      background: #fff;
    }

    .mock-cards {
      display: flex;
      gap: 8px;
      padding: 4px 16px 8px;
      overflow: hidden;
      background: #fff;
    }

    .mock-card {
      width: 70px;
      flex-shrink: 0;
      background: #f9f9f9;
      border-radius: 10px;
      overflow: hidden;
    }

    .mock-card-img {
      width: 100%;
      height: 60px;
      object-fit: cover;
      background: #eee;
    }

    .mock-card-info { padding: 5px 6px; }
    .mock-card-name { font-size: 6px; font-weight: 600; color: #1a1a1a; font-family: sans-serif; }
    .mock-card-price { font-size: 7px; font-weight: 700; color: #F6801B; font-family: sans-serif; margin-top: 2px; }

    .mock-nav {
      margin-top: auto;
      background: #fff;
      border-top: 1px solid #eee;
      padding: 6px 0;
      display: flex;
      justify-content: space-around;
      align-items: center;
    }

    .mock-nav-item {
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 2px;
    }

    .mock-nav-dot {
      width: 14px;
      height: 14px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 8px;
    }

    .mock-nav-dot.active { background: #F6801B; }

    .mock-nav-label { font-size: 5px; color: #999; font-family: sans-serif; }
    .mock-nav-label.active { color: #F6801B; font-weight: 700; }

    /* Cart mockup screen */
    .mock-cart-item {
      display: flex;
      gap: 8px;
      padding: 8px 16px;
      border-bottom: 1px solid #f0f0f0;
      background: #fff;
      align-items: center;
    }

    .mock-cart-img {
      width: 44px;
      height: 44px;
      background: #eee;
      border-radius: 8px;
      flex-shrink: 0;
    }

    .mock-cart-name { font-size: 7px; font-weight: 600; color: #1a1a1a; font-family: sans-serif; }
    .mock-cart-size { font-size: 6px; color: #888; font-family: sans-serif; }
    .mock-cart-price { font-size: 8px; font-weight: 700; color: #F6801B; font-family: sans-serif; margin-top: 2px; }

    .mock-total {
      background: #fff;
      padding: 12px 16px;
      border-top: 1px solid #eee;
      margin-top: auto;
    }

    .mock-total-row {
      display: flex;
      justify-content: space-between;
      font-size: 7px;
      color: #888;
      font-family: sans-serif;
      margin-bottom: 4px;
    }

    .mock-total-row.bold { color: #1a1a1a; font-weight: 700; font-size: 9px; }

    .mock-btn {
      width: 100%;
      background: #F6801B;
      color: #fff;
      border: none;
      border-radius: 10px;
      padding: 8px;
      font-size: 8px;
      font-weight: 700;
      font-family: sans-serif;
      margin-top: 8px;
      cursor: pointer;
      text-align: center;
    }

    /* ── SECTION WRAPPER ──────────────────────────────────────────── */
    .section {
      max-width: 1100px;
      margin: 0 auto;
      padding: 80px 24px;
    }

    .section-tag {
      display: inline-block;
      background: rgba(246,128,27,0.12);
      color: var(--orange);
      font-size: 11px;
      font-weight: 700;
      letter-spacing: 2px;
      text-transform: uppercase;
      padding: 6px 14px;
      border-radius: 6px;
      margin-bottom: 16px;
    }

    h2 {
      font-family: 'Syne', sans-serif;
      font-size: clamp(32px, 5vw, 52px);
      font-weight: 800;
      line-height: 1.1;
      letter-spacing: -1.5px;
      margin-bottom: 16px;
    }

    h2 span { color: var(--orange); }

    .section-desc {
      color: rgba(255,255,255,0.5);
      font-size: 16px;
      max-width: 560px;
      margin-bottom: 48px;
    }

    /* ── DIVIDER ──────────────────────────────────────────────────── */
    .divider {
      border: none;
      border-top: 1px solid rgba(255,255,255,0.06);
      max-width: 1100px;
      margin: 0 auto;
    }

    /* ── FEATURE CARDS ────────────────────────────────────────────── */
    .features-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
      gap: 20px;
    }

    .feature-card {
      background: rgba(255,255,255,0.03);
      border: 1px solid rgba(255,255,255,0.07);
      border-radius: 20px;
      padding: 28px;
      transition: all 0.3s;
    }

    .feature-card:hover {
      background: rgba(246,128,27,0.06);
      border-color: rgba(246,128,27,0.25);
      transform: translateY(-4px);
    }

    .feature-icon {
      font-size: 28px;
      margin-bottom: 16px;
      display: block;
    }

    .feature-title {
      font-family: 'Syne', sans-serif;
      font-size: 17px;
      font-weight: 700;
      margin-bottom: 8px;
    }

    .feature-desc {
      font-size: 14px;
      color: rgba(255,255,255,0.5);
      line-height: 1.6;
    }

    /* ── FOLDER STRUCTURE ─────────────────────────────────────────── */
    .folder-tree {
      background: #0d0d0d;
      border: 1px solid rgba(255,255,255,0.08);
      border-radius: 20px;
      padding: 32px;
      font-family: 'Courier New', monospace;
      font-size: 13px;
      line-height: 2;
      overflow-x: auto;
    }

    .folder-tree .dir { color: var(--orange); font-weight: 600; }
    .folder-tree .file { color: rgba(255,255,255,0.65); }
    .folder-tree .comment { color: rgba(255,255,255,0.25); font-style: italic; }
    .folder-tree .indent-1 { padding-left: 20px; }
    .folder-tree .indent-2 { padding-left: 40px; }
    .folder-tree .indent-3 { padding-left: 60px; }
    .folder-tree .indent-4 { padding-left: 80px; }

    /* ── TECH STACK ───────────────────────────────────────────────── */
    .tech-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 16px;
    }

    .tech-card {
      background: rgba(255,255,255,0.03);
      border: 1px solid rgba(255,255,255,0.07);
      border-radius: 16px;
      padding: 20px;
      display: flex;
      align-items: center;
      gap: 14px;
      transition: all 0.25s;
    }

    .tech-card:hover {
      border-color: rgba(246,128,27,0.3);
      background: rgba(246,128,27,0.05);
    }

    .tech-emoji { font-size: 24px; }

    .tech-name {
      font-size: 14px;
      font-weight: 600;
      margin-bottom: 2px;
    }

    .tech-ver { font-size: 12px; color: rgba(255,255,255,0.4); }

    /* ── SCREENS SECTION ──────────────────────────────────────────── */
    .screens-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
      gap: 24px;
    }

    .screen-item {
      text-align: center;
    }

    .screen-frame {
      aspect-ratio: 9/19;
      background: linear-gradient(180deg, #1e1e1e 0%, #141414 100%);
      border-radius: 28px;
      border: 1.5px solid rgba(255,255,255,0.08);
      margin-bottom: 10px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 28px;
      position: relative;
      overflow: hidden;
      box-shadow: 0 20px 40px rgba(0,0,0,0.4);
    }

    .screen-frame::before {
      content: '';
      position: absolute;
      top: 8px;
      left: 50%;
      transform: translateX(-50%);
      width: 50px;
      height: 14px;
      background: #0A0A0A;
      border-radius: 7px;
    }

    .screen-frame .screen-icon {
      font-size: 32px;
    }

    .screen-label {
      font-size: 12px;
      color: rgba(255,255,255,0.5);
      font-weight: 500;
    }

    /* ── INSTALL ──────────────────────────────────────────────────── */
    .code-block {
      background: #0d0d0d;
      border: 1px solid rgba(255,255,255,0.08);
      border-radius: 16px;
      padding: 24px 28px;
      font-family: 'Courier New', monospace;
      font-size: 14px;
      line-height: 2;
      position: relative;
      margin-bottom: 16px;
      overflow-x: auto;
    }

    .code-block .prompt { color: var(--orange); user-select: none; }
    .code-block .cmd { color: rgba(255,255,255,0.85); }
    .code-block .cmt { color: rgba(255,255,255,0.3); }

    /* ── IMAGES GUIDE ─────────────────────────────────────────────── */
    .images-table {
      width: 100%;
      border-collapse: collapse;
      font-size: 14px;
    }

    .images-table th {
      text-align: left;
      padding: 12px 16px;
      font-size: 11px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 1px;
      color: rgba(255,255,255,0.4);
      border-bottom: 1px solid rgba(255,255,255,0.07);
    }

    .images-table td {
      padding: 12px 16px;
      border-bottom: 1px solid rgba(255,255,255,0.05);
      color: rgba(255,255,255,0.75);
      vertical-align: top;
    }

    .images-table tr:hover td {
      background: rgba(246,128,27,0.03);
    }

    .img-name {
      font-family: 'Courier New', monospace;
      font-size: 12px;
      color: var(--orange);
      background: rgba(246,128,27,0.1);
      padding: 2px 8px;
      border-radius: 4px;
    }

    /* ── FOOTER ───────────────────────────────────────────────────── */
    footer {
      text-align: center;
      padding: 48px 24px;
      border-top: 1px solid rgba(255,255,255,0.06);
      color: rgba(255,255,255,0.3);
      font-size: 13px;
    }

    footer strong { color: var(--orange); }

    /* ── RESPONSIVE ───────────────────────────────────────────────── */
    @media (max-width: 640px) {
      .phones-container { gap: 10px; }
      .phone-frame.side { display: none; }
      h1 { letter-spacing: -2px; }
    }
  </style>
</head>
<body>

<!-- ═══════════════════════════════════════════════════════════════ HERO -->
<section class="hero">
  <div class="grid-lines"></div>

  <div class="badge">🛍️ Flutter E-Commerce App</div>

  <div class="logo-icon">🛍️</div>

  <h1>Shop<span>Ease</span></h1>

  <p class="hero-sub">
    A modern, full-featured e-commerce mobile app built with Flutter and Provider state management.
    Clean architecture. Beautiful UI. Ready to ship.
  </p>

  <div class="hero-chips">
    <span class="chip">Flutter 3.x</span>
    <span class="chip">Provider</span>
    <span class="chip">Dart</span>
    <span class="chip">Material 3</span>
    <span class="chip">Poppins Font</span>
    <span class="chip">Orange & Black</span>
  </div>

  <!-- Phone Mockups -->
  <div class="phones-container">

    <!-- Left phone: Cart screen -->
    <div class="phone-frame side">
      <div class="phone-screen" style="background:#fafafa;">
        <div class="mock-header" style="display:flex;align-items:center;gap:8px;padding:44px 12px 10px;">
          <div style="font-size:10px;font-weight:700;color:#1a1a1a;font-family:sans-serif;">Cart (3)</div>
        </div>
        <div class="mock-cart-item">
          <div class="mock-cart-img"></div>
          <div>
            <div class="mock-cart-name">Red Floral Dress</div>
            <div class="mock-cart-size">M · Red</div>
            <div class="mock-cart-price">$49.99</div>
          </div>
        </div>
        <div class="mock-cart-item">
          <div class="mock-cart-img" style="background:#e0e0e0;"></div>
          <div>
            <div class="mock-cart-name">Brown Leather Bag</div>
            <div class="mock-cart-size">One Size · Brown</div>
            <div class="mock-cart-price">$89.99</div>
          </div>
        </div>
        <div class="mock-total">
          <div class="mock-total-row"><span>Subtotal</span><span>$139.98</span></div>
          <div class="mock-total-row"><span>Shipping</span><span style="color:#43A047;">FREE</span></div>
          <div class="mock-total-row bold"><span>Total</span><span>$139.98</span></div>
          <div class="mock-btn">Proceed to Checkout</div>
        </div>
      </div>
    </div>

    <!-- Center phone: Home screen -->
    <div class="phone-frame main">
      <div class="phone-screen" style="background:#fff;">
        <div class="mock-header">
          <div class="mock-title">Hi, Laisse 👋</div>
          <div class="mock-sub">Discover fashion for you</div>
        </div>
        <div class="mock-search">
          <svg width="10" height="10" viewBox="0 0 24 24" fill="none" stroke="#bbb" stroke-width="2.5"><circle cx="11" cy="11" r="8"/><path d="m21 21-4.35-4.35"/></svg>
          <span>Search for products...</span>
        </div>
        <div class="mock-banner">
          <div style="background:rgba(255,255,255,0.2);border-radius:10px;padding:2px 6px;width:fit-content;font-size:6px;color:#fff;font-family:sans-serif;margin-bottom:4px;">Summer Sale 🔥</div>
          <div class="mock-banner-title">Up to 50% OFF</div>
          <div class="mock-banner-sub">On selected items</div>
          <div class="mock-shop-btn">Shop Now</div>
        </div>
        <div class="mock-section-title">Best Sellers</div>
        <div class="mock-cards">
          <div class="mock-card">
            <div class="mock-card-img" style="background:linear-gradient(135deg,#ffcdd2,#ef9a9a);"></div>
            <div class="mock-card-info">
              <div class="mock-card-name">Red Dress</div>
              <div class="mock-card-price">$49.99</div>
            </div>
          </div>
          <div class="mock-card">
            <div class="mock-card-img" style="background:linear-gradient(135deg,#d7ccc8,#a1887f);"></div>
            <div class="mock-card-info">
              <div class="mock-card-name">Brown Bag</div>
              <div class="mock-card-price">$89.99</div>
            </div>
          </div>
          <div class="mock-card">
            <div class="mock-card-img" style="background:linear-gradient(135deg,#f5f5f5,#e0e0e0);"></div>
            <div class="mock-card-info">
              <div class="mock-card-name">Sneakers</div>
              <div class="mock-card-price">$59.99</div>
            </div>
          </div>
        </div>
        <div class="mock-nav">
          <div class="mock-nav-item">
            <div class="mock-nav-dot active">🏠</div>
            <div class="mock-nav-label active">Home</div>
          </div>
          <div class="mock-nav-item">
            <div class="mock-nav-dot">⊞</div>
            <div class="mock-nav-label">Categories</div>
          </div>
          <div style="width:36px;height:36px;background:#F6801B;border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:14px;box-shadow:0 4px 12px rgba(246,128,27,0.4);">🛍️</div>
          <div class="mock-nav-item">
            <div class="mock-nav-dot">♡</div>
            <div class="mock-nav-label">Wishlist</div>
          </div>
          <div class="mock-nav-item">
            <div class="mock-nav-dot">👤</div>
            <div class="mock-nav-label">Profile</div>
          </div>
        </div>
      </div>
    </div>

    <!-- Right phone: Order success -->
    <div class="phone-frame side">
      <div class="phone-screen" style="background:#fff;display:flex;flex-direction:column;align-items:center;justify-content:center;padding:24px;">
        <div style="width:70px;height:70px;background:#F6801B;border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:34px;box-shadow:0 12px 30px rgba(246,128,27,0.35);margin-bottom:16px;">✓</div>
        <div style="font-size:13px;font-weight:700;color:#1a1a1a;font-family:sans-serif;margin-bottom:6px;">Order Placed!</div>
        <div style="font-size:8px;color:#888;font-family:sans-serif;text-align:center;line-height:1.5;">Thank you for your order. Your items will be delivered soon.</div>
        <div class="mock-btn" style="margin-top:20px;">Back to Home</div>
      </div>
    </div>

  </div>
</section>

<hr class="divider"/>

<!-- ═══════════════════════════════════════════════════════════ FEATURES -->
<div class="section">
  <div class="section-tag">Features</div>
  <h2>Everything you<br/><span>need to ship</span></h2>
  <p class="section-desc">A complete e-commerce experience out of the box — from auth to checkout.</p>

  <div class="features-grid">
    <div class="feature-card">
      <span class="feature-icon">🔐</span>
      <div class="feature-title">Authentication</div>
      <div class="feature-desc">Login, Register, and Forgot Password screens with validation and smooth loading states.</div>
    </div>
    <div class="feature-card">
      <span class="feature-icon">🏠</span>
      <div class="feature-title">Home Screen</div>
      <div class="feature-desc">Animated banner, best sellers carousel, new arrivals grid, shimmer loading effects.</div>
    </div>
    <div class="feature-card">
      <span class="feature-icon">📦</span>
      <div class="feature-title">Product Detail</div>
      <div class="feature-desc">Full-screen hero image, size & color selection, quantity picker, add to cart.</div>
    </div>
    <div class="feature-card">
      <span class="feature-icon">🛒</span>
      <div class="feature-title">Shopping Cart</div>
      <div class="feature-desc">Add / remove items, update quantities, subtotal & shipping calculation in real time.</div>
    </div>
    <div class="feature-card">
      <span class="feature-icon">♡</span>
      <div class="feature-title">Wishlist</div>
      <div class="feature-desc">Toggle favorites from any screen. Persistent favorites grid with instant updates.</div>
    </div>
    <div class="feature-card">
      <span class="feature-icon">✅</span>
      <div class="feature-title">Checkout Flow</div>
      <div class="feature-desc">3-step checkout: payment method → delivery info → order review. Animated success screen.</div>
    </div>
    <div class="feature-card">
      <span class="feature-icon">🗂️</span>
      <div class="feature-title">Categories & Filter</div>
      <div class="feature-desc">Filter by category, sort by price / rating / newest, search across all products.</div>
    </div>
    <div class="feature-card">
      <span class="feature-icon">👤</span>
      <div class="feature-title">Profile</div>
      <div class="feature-desc">User info, avatar, settings menu, and logout with clean section-based layout.</div>
    </div>
    <div class="feature-card">
      <span class="feature-icon">🎨</span>
      <div class="feature-title">UI & Animations</div>
      <div class="feature-desc">Custom shimmer, animated splash, elastic scale transitions, and smooth micro-interactions.</div>
    </div>
  </div>
</div>

<hr class="divider"/>

<!-- ═══════════════════════════════════════════════════════ FOLDER STRUCTURE -->
<div class="section">
  <div class="section-tag">Architecture</div>
  <h2>Project <span>structure</span></h2>
  <p class="section-desc">Clean, layered architecture with Provider for state management. Easy to scale.</p>

  <div class="folder-tree">
<div class="dir">shopping_app/</div>
<div class="indent-1 dir">lib/</div>
<div class="indent-2 dir">core/</div>
<div class="indent-3 dir">constants/</div>
<div class="indent-4 file">app_constants.dart   <span class="comment"># Product names, sizes, categories</span></div>
<div class="indent-3 dir">theme/</div>
<div class="indent-4 file">app_theme.dart       <span class="comment"># Colors, typography, widget themes</span></div>
<div class="indent-3 dir">utils/</div>
<div class="indent-4 file">helpers.dart         <span class="comment"># Format helpers</span></div>
<br/>
<div class="indent-2 dir">data/</div>
<div class="indent-3 dir">models/</div>
<div class="indent-4 file">product_model.dart   <span class="comment"># Product + dummy data</span></div>
<div class="indent-4 file">cart_model.dart      <span class="comment"># CartItem</span></div>
<div class="indent-4 file">user_model.dart      <span class="comment"># UserModel</span></div>
<div class="indent-3 dir">repositories/</div>
<div class="indent-4 file">product_repository.dart  <span class="comment"># Ready for real API</span></div>
<br/>
<div class="indent-2 dir">providers/              <span class="comment"># STATE MANAGEMENT (Provider)</span></div>
<div class="indent-3 file">auth_provider.dart   <span class="comment"># Login, register, logout</span></div>
<div class="indent-3 file">products_provider.dart <span class="comment"># Load, filter, sort products</span></div>
<div class="indent-3 file">cart_provider.dart   <span class="comment"># Cart items & totals</span></div>
<div class="indent-3 file">favorites_provider.dart <span class="comment"># Wishlist toggle</span></div>
<br/>
<div class="indent-2 dir">presentation/</div>
<div class="indent-3 dir">screens/</div>
<div class="indent-4 dir">splash/         <span class="comment"># SplashScreen</span></div>
<div class="indent-4 dir">auth/           <span class="comment"># Login, Register, ForgotPassword</span></div>
<div class="indent-4 dir">home/           <span class="comment"># MainScreen + HomeScreen</span></div>
<div class="indent-4 dir">categories/     <span class="comment"># CategoriesScreen</span></div>
<div class="indent-4 dir">product/        <span class="comment"># ProductDetailScreen</span></div>
<div class="indent-4 dir">cart/           <span class="comment"># CartScreen</span></div>
<div class="indent-4 dir">favorites/      <span class="comment"># FavoritesScreen</span></div>
<div class="indent-4 dir">checkout/       <span class="comment"># CheckoutScreen + OrderSuccessScreen</span></div>
<div class="indent-4 dir">profile/        <span class="comment"># ProfileScreen</span></div>
<div class="indent-3 dir">widgets/</div>
<div class="indent-4 dir">common/         <span class="comment"># ProductCard, ShimmerCard</span></div>
<div class="indent-2 file">main.dart       <span class="comment"># App entry + MultiProvider + routes</span></div>
<br/>
<div class="indent-1 dir">assets/</div>
<div class="indent-2 dir">images/</div>
<div class="indent-3 dir">products/       <span class="comment"># 12 product images (see table below)</span></div>
<div class="indent-3 dir">banners/        <span class="comment"># banner_sale.png, banner_new.png</span></div>
<div class="indent-3 dir">profile/        <span class="comment"># avatar.png</span></div>
<div class="indent-2 dir">fonts/</div>
<div class="indent-3 file">Poppins-Regular.ttf</div>
<div class="indent-3 file">Poppins-Medium.ttf</div>
<div class="indent-3 file">Poppins-SemiBold.ttf</div>
<div class="indent-3 file">Poppins-Bold.ttf</div>
<div class="indent-1 file">pubspec.yaml    <span class="comment"># All packages defined</span></div>
  </div>
</div>

<hr class="divider"/>

<!-- ═══════════════════════════════════════════════════════════ TECH STACK -->
<div class="section">
  <div class="section-tag">Tech Stack</div>
  <h2>Packages <span>used</span></h2>
  <p class="section-desc">Carefully selected packages. No bloat. Everything you need.</p>

  <div class="tech-grid">
    <div class="tech-card">
      <span class="tech-emoji">🔄</span>
      <div><div class="tech-name">provider</div><div class="tech-ver">^6.1.1 · State Management</div></div>
    </div>
    <div class="tech-card">
      <span class="tech-emoji">🧭</span>
      <div><div class="tech-name">go_router</div><div class="tech-ver">^13.2.0 · Navigation</div></div>
    </div>
    <div class="tech-card">
      <span class="tech-emoji">🌐</span>
      <div><div class="tech-name">dio</div><div class="tech-ver">^5.4.1 · HTTP Client</div></div>
    </div>
    <div class="tech-card">
      <span class="tech-emoji">🖼️</span>
      <div><div class="tech-name">cached_network_image</div><div class="tech-ver">^3.3.1 · Image Loading</div></div>
    </div>
    <div class="tech-card">
      <span class="tech-emoji">💾</span>
      <div><div class="tech-name">shared_preferences</div><div class="tech-ver">^2.2.3 · Local Storage</div></div>
    </div>
    <div class="tech-card">
      <span class="tech-emoji">✨</span>
      <div><div class="tech-name">shimmer</div><div class="tech-ver">^3.0.0 · Loading Effects</div></div>
    </div>
    <div class="tech-card">
      <span class="tech-emoji">🎠</span>
      <div><div class="tech-name">carousel_slider</div><div class="tech-ver">^4.2.1 · Banner Carousel</div></div>
    </div>
    <div class="tech-card">
      <span class="tech-emoji">📝</span>
      <div><div class="tech-name">flutter_form_builder</div><div class="tech-ver">^9.2.1 · Forms</div></div>
    </div>
    <div class="tech-card">
      <span class="tech-emoji">🎬</span>
      <div><div class="tech-name">animate_do</div><div class="tech-ver">^3.3.4 · Animations</div></div>
    </div>
    <div class="tech-card">
      <span class="tech-emoji">💳</span>
      <div><div class="tech-name">flutter_credit_card</div><div class="tech-ver">^4.0.1 · Payment UI</div></div>
    </div>
    <div class="tech-card">
      <span class="tech-emoji">🔒</span>
      <div><div class="tech-name">flutter_secure_storage</div><div class="tech-ver">^9.0.0 · Secure Keys</div></div>
    </div>
    <div class="tech-card">
      <span class="tech-emoji">🌍</span>
      <div><div class="tech-name">intl</div><div class="tech-ver">^0.19.0 · i18n / Currency</div></div>
    </div>
  </div>
</div>

<hr class="divider"/>

<!-- ═══════════════════════════════════════════════════════════ SCREENS -->
<div class="section">
  <div class="section-tag">Screens</div>
  <h2>All <span>screens</span></h2>
  <p class="section-desc">9 fully implemented screens covering the complete user journey.</p>

  <div class="screens-grid">
    <div class="screen-item">
      <div class="screen-frame" style="background:linear-gradient(160deg,#F6801B,#D4680E);">
        <span class="screen-icon">🛍️</span>
      </div>
      <div class="screen-label">Splash</div>
    </div>
    <div class="screen-item">
      <div class="screen-frame">
        <span class="screen-icon">🔐</span>
      </div>
      <div class="screen-label">Login</div>
    </div>
    <div class="screen-item">
      <div class="screen-frame">
        <span class="screen-icon">📝</span>
      </div>
      <div class="screen-label">Register</div>
    </div>
    <div class="screen-item">
      <div class="screen-frame">
        <span class="screen-icon">🏠</span>
      </div>
      <div class="screen-label">Home</div>
    </div>
    <div class="screen-item">
      <div class="screen-frame">
        <span class="screen-icon">🗂️</span>
      </div>
      <div class="screen-label">Categories</div>
    </div>
    <div class="screen-item">
      <div class="screen-frame">
        <span class="screen-icon">👗</span>
      </div>
      <div class="screen-label">Product Detail</div>
    </div>
    <div class="screen-item">
      <div class="screen-frame">
        <span class="screen-icon">🛒</span>
      </div>
      <div class="screen-label">Cart</div>
    </div>
    <div class="screen-item">
      <div class="screen-frame">
        <span class="screen-icon">♡</span>
      </div>
      <div class="screen-label">Wishlist</div>
    </div>
    <div class="screen-item">
      <div class="screen-frame">
        <span class="screen-icon">💳</span>
      </div>
      <div class="screen-label">Checkout</div>
    </div>
    <div class="screen-item">
      <div class="screen-frame" style="background:linear-gradient(160deg,#1b5e20,#2e7d32);">
        <span class="screen-icon">✅</span>
      </div>
      <div class="screen-label">Order Success</div>
    </div>
    <div class="screen-item">
      <div class="screen-frame">
        <span class="screen-icon">👤</span>
      </div>
      <div class="screen-label">Profile</div>
    </div>
    <div class="screen-item">
      <div class="screen-frame">
        <span class="screen-icon">🔑</span>
      </div>
      <div class="screen-label">Forgot Password</div>
    </div>
  </div>
</div>

<hr class="divider"/>

<!-- ═══════════════════════════════════════════════════════════ IMAGES GUIDE -->
<div class="section">
  <div class="section-tag">Assets</div>
  <h2>Image <span>naming guide</span></h2>
  <p class="section-desc">Name your real product images exactly like this and place them in <code style="color:var(--orange)">assets/images/products/</code></p>

  <table class="images-table">
    <thead>
      <tr>
        <th>#</th>
        <th>File Name</th>
        <th>Product</th>
        <th>Category</th>
        <th>Size hint</th>
      </tr>
    </thead>
    <tbody>
      <tr><td>1</td><td><span class="img-name">dress_red.png</span></td><td>Red Floral Dress</td><td>Clothing</td><td>600×800px</td></tr>
      <tr><td>2</td><td><span class="img-name">bag_brown.png</span></td><td>Brown Leather Bag</td><td>Bags</td><td>600×600px</td></tr>
      <tr><td>3</td><td><span class="img-name">jacket_white.png</span></td><td>White Oversized Jacket</td><td>Clothing</td><td>600×800px</td></tr>
      <tr><td>4</td><td><span class="img-name">shoes_pink.png</span></td><td>Pink Running Shoes</td><td>Shoes</td><td>800×600px</td></tr>
      <tr><td>5</td><td><span class="img-name">shirt_blue.png</span></td><td>Blue Denim Shirt</td><td>Clothing</td><td>600×800px</td></tr>
      <tr><td>6</td><td><span class="img-name">pants_black.png</span></td><td>Black Slim Pants</td><td>Clothing</td><td>600×800px</td></tr>
      <tr><td>7</td><td><span class="img-name">hat_beige.png</span></td><td>Beige Sun Hat</td><td>Accessories</td><td>600×600px</td></tr>
      <tr><td>8</td><td><span class="img-name">sunglasses_black.png</span></td><td>Classic Black Sunglasses</td><td>Accessories</td><td>800×500px</td></tr>
      <tr><td>9</td><td><span class="img-name">watch_gold.png</span></td><td>Gold Analog Watch</td><td>Accessories</td><td>600×600px</td></tr>
      <tr><td>10</td><td><span class="img-name">sneakers_white.png</span></td><td>White Classic Sneakers</td><td>Shoes</td><td>800×600px</td></tr>
      <tr><td>11</td><td><span class="img-name">blouse_floral.png</span></td><td>Floral Chiffon Blouse</td><td>Clothing</td><td>600×800px</td></tr>
      <tr><td>12</td><td><span class="img-name">coat_grey.png</span></td><td>Grey Wool Coat</td><td>Clothing</td><td>600×800px</td></tr>
      <tr><td>13</td><td><span class="img-name">avatar.png</span></td><td>User Avatar</td><td>Profile</td><td>200×200px</td></tr>
    </tbody>
  </table>
</div>

<hr class="divider"/>

<!-- ═══════════════════════════════════════════════════════ INSTALL -->
<div class="section">
  <div class="section-tag">Getting Started</div>
  <h2>Run it in <span>minutes</span></h2>
  <p class="section-desc">Clone, add your images, and flutter run. That's it.</p>

  <div class="code-block">
    <div><span class="prompt"># </span><span class="cmt">1. Clone the repo</span></div>
    <div><span class="prompt">$ </span><span class="cmd">git clone https://github.com/yourusername/shopease.git</span></div>
    <div><span class="prompt">$ </span><span class="cmd">cd shopease</span></div>
    <br/>
    <div><span class="prompt"># </span><span class="cmt">2. Install dependencies</span></div>
    <div><span class="prompt">$ </span><span class="cmd">flutter pub get</span></div>
    <br/>
    <div><span class="prompt"># </span><span class="cmt">3. Add your images to assets/images/products/</span></div>
    <div><span class="prompt"># </span><span class="cmt">   (use the naming table above)</span></div>
    <br/>
    <div><span class="prompt"># </span><span class="cmt">4. Download Poppins font and add to assets/fonts/</span></div>
    <div><span class="prompt">$ </span><span class="cmd">open https://fonts.google.com/specimen/Poppins</span></div>
    <br/>
    <div><span class="prompt"># </span><span class="cmt">5. Run the app</span></div>
    <div><span class="prompt">$ </span><span class="cmd">flutter run</span></div>
  </div>

  <div class="code-block">
    <div><span class="cmt"># Minimum requirements</span></div>
    <div><span class="cmd">Flutter: 3.0.0+</span></div>
    <div><span class="cmd">Dart:    3.0.0+</span></div>
    <div><span class="cmd">Android: API 21+</span></div>
    <div><span class="cmd">iOS:     12.0+</span></div>
  </div>
</div>

<!-- ═══════════════════════════════════════════════════════════ FOOTER -->
<footer>
  Built with ❤️ using <strong>Flutter</strong> &amp; <strong>Provider</strong> · <strong>ShopEase</strong> · MIT License
</footer>

</body>
</html>
