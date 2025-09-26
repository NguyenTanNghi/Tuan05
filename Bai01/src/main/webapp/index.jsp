<%--
  Created by IntelliJ IDEA.
  User: Tan Nghi
  Date: 9/26/2025
  Time: 10:30 AM
  Trang chủ quản lý điện thoại
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Trang Chủ Quản Lý Điện Thoại</title>
    <style>
      body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #6a11cb, #2575fc);
        margin: 0;
        padding: 0;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
      }
      .container {
        background: #fff;
        padding: 40px 50px;
        border-radius: 18px;
        box-shadow: 0 12px 30px rgba(0,0,0,0.2);
        text-align: center;
        animation: fadeIn 0.8s ease;
      }
      h1 {
        color: #333;
        margin-bottom: 40px;
      }
      .menu {
        display: flex;
        flex-direction: column;
        gap: 20px;
      }
      .menu a {
        display: block;
        padding: 14px 25px;
        background: linear-gradient(135deg, #2575fc, #6a11cb);
        color: white;
        text-decoration: none;
        border-radius: 10px;
        font-size: 18px;
        font-weight: 500;
        transition: all 0.3s ease;
        box-shadow: 0 4px 12px rgba(0,0,0,0.15);
      }
      .menu a:hover {
        transform: translateY(-4px);
        box-shadow: 0 8px 18px rgba(0,0,0,0.25);
        background: linear-gradient(135deg, #6a11cb, #2575fc);
      }
      @keyframes fadeIn {
        from {
          opacity: 0;
          transform: scale(0.9);
        }
        to {
          opacity: 1;
          transform: scale(1);
        }
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>Trang Chủ Quản Lý Điện Thoại</h1>
      <div class="menu">
        <a href="danh-sach-ncc">📱 Xem Điện Thoại Theo Nhà Cung Cấp</a>
        <a href="them-dien-thoai">➕ Thêm Điện Thoại Mới</a>
        <a href="quan-ly">⚙️ Quản Lý Điện Thoại</a>
      </div>
    </div>
  </body>
</html>

