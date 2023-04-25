<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp" %>
	<h1>도서 정보 입력</h1>
	<form action="insertPro.jsp" method="post">
	  <div class="mb-3">
	    <label for="code" class="form-label">code</label>
	    <input type="text" class="form-control" id="code" name="code" value="${dto.code}">    
	  </div>
	  <div class="mb-3">
	    <label for="title" class="form-label">title</label>
	    <input type="text" class="form-control" id="title" name="title" value="${dto.title}">    
	  </div>
	  <div class="mb-3">
	    <label for="writer" class="form-label">writer</label>
	    <input type="text" class="form-control" id="writer" name="writer" value="${dto.writer}">    
	  </div>
	  <div class="mb-3">
	    <label for="price" class="form-label">price</label>
	    <input type="text" class="form-control" id="price" name="price" value="${dto.price}">    
	  </div>  
	  <div class="mb-3">
	    <label for="description" class="form-label">description</label>
	    <textarea class="form-control" id="description" name="description" readonly>${dto.description}</textarea>   
	  </div>  
	  <button type="submit" class="btn btn-primary">저장</button>
	  <button type="button" class="btn btn-success">목록으로</button>
	</form>
	<script src = "/js/insert.js"></script>
<%@ include file="/include/footer.jsp" %>


    