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
    <title>Danh sách Điện thoại theo Nhà Cung Cấp</title>
    <style>
      body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #f0f2f5;
        margin: 0;
        padding: 0;
      }
      header {
        background: linear-gradient(135deg, #007bff, #00c6ff);
        color: white;
        padding: 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 2px 8px rgba(0,0,0,0.2);
      }
      header h1 {
        margin: 0;
        font-size: 24px;
        letter-spacing: 1px;
      }
      .home-btn {
        background: white;
        color: #007bff;
        text-decoration: none;
        padding: 8px 16px;
        border-radius: 6px;
        font-weight: bold;
        transition: all 0.3s;
      }
      .home-btn:hover {
        background: #0056b3;
        color: white;
      }
      .container {
        width: 90%;
        max-width: 1100px;
        margin: 30px auto;
        background: white;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        animation: fadeIn 0.8s ease-in-out;
      }
      label {
        font-weight: bold;
        margin-right: 10px;
      }
      select {
        padding: 8px 12px;
        border-radius: 6px;
        border: 1px solid #ccc;
        transition: all 0.3s;
      }
      select:hover {
        border-color: #007bff;
      }
      hr {
        margin: 20px 0;
        border: none;
        border-top: 1px solid #ddd;
      }
      h2 {
        margin-top: 0;
        color: #007bff;
      }
      table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 15px;
      }
      th, td {
        text-align: center;
        padding: 12px;
      }
      th {
        background: #007bff;
        color: white;
        text-transform: uppercase;
      }
      tr {
        transition: background-color 0.3s, transform 0.2s;
      }
      tr:nth-child(even) {
        background: #f9f9f9;
      }
      tr:hover {
        background: #e6f2ff;
        transform: scale(1.01);
      }
      img {
        border-radius: 8px;
        transition: transform 0.3s;
      }
      img:hover {
        transform: scale(1.2);
      }

      /* Animation xuất hiện */
      @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to   { opacity: 1; transform: translateY(0); }
      }
    </style>
  </head>
  <body>
    <header>
      <h1>📱 Xem Điện Thoại Theo Nhà Cung Cấp</h1>
      <a href="index.jsp" class="home-btn">🏠 Trang chủ</a>
    </header>

    <div class="container">
      <form action="danh-sach-ncc" method="get">
        <label for="maNCC">Chọn nhà cung cấp:</label>
        <select name="maNCC" id="maNCC" onchange="this.form.submit()">
          <option value="">-- Tất cả --</option>
          <c:forEach items="${listNCC}" var="ncc">
            <option value="${ncc.maNCC}" ${ncc.maNCC == selectedNCC ? 'selected' : ''}>
                ${ncc.tenNCC}
            </option>
          </c:forEach>
        </select>
      </form>

      <hr>

      <c:if test="${not empty listDT}">
        <h2>📋 Danh sách điện thoại</h2>
        <table>
          <tr>
            <th>Mã ĐT</th>
            <th>Tên Điện Thoại</th>
            <th>Năm SX</th>
            <th>Cấu Hình</th>
            <th>Hình Ảnh</th>
          </tr>
          <c:forEach items="${listDT}" var="dt">
            <tr>
              <td>${dt.maDT}</td>
              <td>${dt.tenDT}</td>
              <td>${dt.namSanXuat}</td>
              <td>${dt.cauHinh}</td>
              <td><img src="images/${dt.hinhAnh}" alt="${dt.tenDT}" width="100"></td>
            </tr>
          </c:forEach>
        </table>
      </c:if>
    </div>
  </body>
</html>
