<%--
  Created by IntelliJ IDEA.
  User: Tan Nghi
  Date: 9/19/2025
  Time: 5:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Thêm Điện Thoại Mới</title>
    <style>
      body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #6a11cb, #2575fc);
        margin: 0;
        padding: 0;
      }
      .container {
        max-width: 600px;
        margin: 50px auto;
        background: #fff;
        padding: 25px 30px;
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        animation: fadeInUp 0.7s ease;
      }
      h1 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
      }
      label {
        display: block;
        margin-bottom: 8px;
        font-weight: 600;
        color: #444;
      }
      input[type="text"],
      textarea,
      select,
      input[type="file"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 18px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 14px;
        transition: 0.3s;
      }
      input:focus, textarea:focus, select:focus {
        border-color: #6a11cb;
        outline: none;
        box-shadow: 0 0 5px rgba(106,17,203,0.5);
      }
      textarea {
        resize: none;
        height: 80px;
      }
      .preview {
        text-align: center;
        margin-bottom: 18px;
      }
      .preview img {
        max-width: 200px;
        max-height: 200px;
        border-radius: 10px;
        border: 2px solid #ddd;
        box-shadow: 0 5px 15px rgba(0,0,0,0.15);
        transition: 0.3s;
      }
      .preview img:hover {
        transform: scale(1.05);
      }
      .buttons {
        display: flex;
        justify-content: space-between;
      }
      button {
        background: #6a11cb;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 14px;
        transition: 0.3s;
      }
      button:hover {
        background: #2575fc;
        transform: translateY(-2px);
        box-shadow: 0 5px 12px rgba(0,0,0,0.2);
      }
      .back-btn {
        background: #555;
      }
      .back-btn:hover {
        background: #333;
      }
      @keyframes fadeInUp {
        from {
          transform: translateY(30px);
          opacity: 0;
        }
        to {
          transform: translateY(0);
          opacity: 1;
        }
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>Thêm Điện Thoại Mới</h1>
      <form action="them-dien-thoai" method="post" enctype="multipart/form-data" id="addPhoneForm">
        <label for="maDT">Mã ĐT:</label>
        <input type="text" name="maDT" id="maDT" required>

        <label for="tenDT">Tên ĐT:</label>
        <input type="text" name="tenDT" id="tenDT" required>

        <label for="namSanXuat">Năm sản xuất:</label>
        <input type="text" name="namSanXuat" id="namSanXuat" required pattern="\d{4}">

        <label for="cauHinh">Cấu hình:</label>
        <textarea name="cauHinh" id="cauHinh" required maxlength="255"></textarea>

        <label for="maNCC">Nhà cung cấp:</label>
        <select name="maNCC" id="maNCC" required>
          <c:forEach items="${listNCC}" var="ncc">
            <option value="${ncc.maNCC}">${ncc.tenNCC}</option>
          </c:forEach>
        </select>

        <label for="hinhAnh">Hình ảnh:</label>
        <input type="file" name="hinhAnh" id="hinhAnh" accept=".png,.jpg,.jpeg" required onchange="previewImage(event)">

        <!-- Preview -->
        <div class="preview">
          <img id="previewImg" src="#" alt="Preview" style="display:none;">
        </div>

        <div class="buttons">
          <button type="submit">Thêm</button>
          <button type="button" class="back-btn" onclick="history.back()">Quay lại</button>
        </div>
      </form>
    </div>

    <script>
      function previewImage(event) {
        const preview = document.getElementById("previewImg");
        const file = event.target.files[0];
        if (file) {
          const reader = new FileReader();
          reader.onload = function(e) {
            preview.src = e.target.result;
            preview.style.display = "block";
          }
          reader.readAsDataURL(file);
        } else {
          preview.style.display = "none";
        }
      }
    </script>
  </body>
</html>

