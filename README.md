## BOOKSTORE

### 1. Project Overview

This project is a comprehensive relational database system designed to manage the operations of a bookstore. It handles everything from storing book data and managing customer information to processing orders, handling shipping, and trackking authors. 

### 2. Objectives
To build a relational database that stores information about the bookstore's operations including
- Books
- customers
- shipping
- authors
- orders

### 3. Key Features.
- Books: Stores detailed book infomation including title, ISBN, genre, language, and related books
- Customers: Manage customer profiles and multiple addresses(current/old)
- Authors: Keep records of authors and their books
- Orders: Track purchases with order itemr, status and history
- Shipping: Manage delivery methods and costs

  
### 4. Database Schema Overview.
<table>
    <thread>
      <tr>
        <th>Books</th>
        <th>Book authors</th>
        <th>Authors</th>
        <th>Book language</th>
        <th>Publishers</th>
        <th>Customer</th>
        <th>Customer Address</th>
        <th>Address status</th>
        <th>Address</th>
        <th>Country</th>
        <th>Customer Order</th>
        <th>Order line</th>
        <th>Shipping methods</th>
        <th>Order History</th>
        <th>Order Status</th>
      </tr>
    </thread>
   <tbody>
        <tr>
          <td>A list of all books available in the store</td>
          <td>A table to manage the many-to-many relationship 
between books and authors. </td>
          <td>A list of all authors.</td>
          <td>A list of the possible languages of books. </td>
          <td> A list of publishers for books.</td>
          <td> A list of the bookstore's customers. </td>
          <td>A list of addresses for customers. Each 
customer can have multiple addresses. </td>
          <td>A list of statuses for an address (e.g., current, 
old).</td>
          <td> A list of all addresses in the system.</td>
          <td>A list of countries where the addresses are located.</td>
          <td>A list of orders placed by customers. </td>
          <td>A list of books that are part of each order</td>
          <td>A list of possible shipping methods for an 
order.</td>
          <td>A record of the history of an order (e.g., ordered, 
cancelled, delivered).</td>
          <td>A list of possible statuses for an order (e.g., 
pending, shipped, delivered). </td>
        </tr>
     
   </tbody>
</table>

### ERD
<img src="https://github.com/Itchy-Fingers/bookstorage/blob/main/erd.jpg" width="800">

### Contributors
<table>
  <tbody>
    <tr>
      <td align="center">
        <a href="https://github.com/Itchy-Fingers">
        <img src="https://avatars.githubusercontent.com/u/113516060?v=4" width="100">
        <br />
        <sub><b>Sospeter Owino</b></sub>
        <a/>
      </td>
      <td align="center">
      <a href="https://github.com/jacklinenyaga">
      <img src="https://avatars.githubusercontent.com/u/126550868?v=4" width="100">
      <br />
      <sub><b>Jackline Nyaga</b></sub>
      <a/>
      </td>
      <td align="centre">
        <a href="https://github.com/Viviankairuthi">
        <img src="https://avatars.githubusercontent.com/u/122861507?v=4" width="100">
        <br />
        <sub><b>Vivian Kairuthi<b><sub>
        <a/>
      </td>
    </tr>
  </tbody>
</table>
