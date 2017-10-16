<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
  <title>BookData</title>

  <style type="text/css">
    .tg {
      border-collapse: collapse;
      border-spacing: 0;
      border-color: #ccc;
    }

    .tg td {
      font-family: Arial, sans-serif;
      font-size: 14px;
      padding: 10px 5px;
      border-style: solid;
      border-width: 1px;
      overflow: hidden;
      word-break: normal;
      border-color: #ccc;
      color: #333;
      background-color: #fff;
    }

    .tg th {
      font-family: Arial, sans-serif;
      font-size: 14px;
      font-weight: normal;
      padding: 10px 5px;
      border-style: solid;
      border-width: 1px;
      overflow: hidden;
      word-break: normal;
      border-color: #ccc;
      color: #333;
      background-color: #f0f0f0;
    }

    .tg .tg-4eph {
      background-color: #f9f9f9
    }
  </style>

</head>
<body>
<h1>Book Details</h1>

<table class="tg">
  <tr>
    <th width="80">ID</th>
    <th width="120">Title</th>
    <th width="120">Description</th>
    <th width="120">Author</th>
    <th width="60">ISBN</th>
    <th width="120">PrintYear</th>
    <th width="20">Readed</th>

  </tr>
  <tr>
    <td>${book.id}</td>
    <td><a>${book.bookTitle}</a></td>
    <td>${book.description}</td>
    <td>${book.bookAuthor}</td>
    <td>${book.isbn}</td>
    <td>${book.printYear}</td>
    <td>${book.readAlready}</td>

  </tr>
</table>

<h1>Update the edition of the book</h1>

<c:url var="updateAction" value="/bookdata"/>

<form:form action="${updateAction}" commandName="book">
  <table>


    <tr>
      <td>
        <form:label path="id">
          <spring:message text="ID"/>
        </form:label>
      </td>
      <td>
        <form:input path="id" readonly="true" cssStyle="background-color: lightgrey; color: gray"/>
      </td>
    </tr>

    <tr>
      <td>
        <form:label path="bookTitle">
          <spring:message text="Title"/>
        </form:label>
      </td>
      <td>
        <form:input path="bookTitle"/>
      </td>
    </tr>
    <tr>
      <td>
        <form:label path="description">
          <spring:message text="Description"/>
        </form:label>

      </td>
      <td>
        <form:input path="description"/>
      </td>
    </tr>

    <tr>
      <td>
        <form:label path="bookAuthor">
          <spring:message text="Author"/>
        </form:label>
      </td>
      <td>
        <form:input path="bookAuthor" readonly="true" cssStyle="background-color: lightgrey; color: gray"/>
      </td>
    </tr>

    <tr>
      <td>
        <form:label path="isbn">
          <spring:message text="ISBN"/>
        </form:label>
      </td>
      <td>
        <form:input path="isbn"/>
      </td>


    <tr>
      <td>
        <form:label path="printYear">
          <spring:message text="PrintYear"/>
        </form:label>
      </td>
      <td>
        <form:input path="printYear"/>
      </td>
    </tr>

    <tr>
      <td>
        <form:label path="readAlready">
          <spring:message text="is readed"/>
        </form:label>
      </td>
      <td>
        <form:input path="readAlready" readonly="true" cssStyle="background-color: lightgrey; color: gray"/>
      </td>
    </tr>


    <tr>
      <td colspan="2">

          <input type="submit"
                 value="<spring:message text="Update edition"/>"/>


      </td>
    </tr>
  </table>
</form:form>

</body>
</html>