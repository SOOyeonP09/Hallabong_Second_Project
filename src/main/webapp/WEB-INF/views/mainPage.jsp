<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한라봉 프로젝트</title>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="${root}css/mainPage.css" />

</head>

<body>
	<header>
		<c:import url="/WEB-INF/views/include/top.jsp"></c:import>
	</header>

	<nav class="navigator">
		<ul>
			<li class="navigator-link"><a href="#mainCategory">카테고리</a></li>
			<li class="navigator-link"><a href="#mainNotice">공지사항</a></li>
			<li class="navigator-link"><a href="#mainBest">인기상품</a></li>
			<li class="navigator-link"><a href="#mainNew">신상품</a></li>
			<li class="navigator-link"><a href="#mainRev">리뷰상품</a></li>
		</ul>
	</nav>

	<section>
		<article id="banner">
			<div>
				<img src="img/9174a938-1c00-4709-84f7-a41d8858b750.jpg">
			</div>
		</article>

		<article id="category">
			<div class="Info">
				<h4>카테고리</h4>
			</div>

			<div id="mainCategory" class="categoryIcon">
				<ul class="catrgoryDetail">
					<li><img src="img/vegetable1.png"></li>
					<li><a href="${root }cat/main?cat_no=1">채소</a></li>
				</ul>
				<ul class="catrgoryDetail">
					<li><img src="img/basket1.png"></li>
					<li><a href="${root }cat/main?cat_no=2">과일</a></li>

				</ul>
				<ul class="catrgoryDetail">
					<li><img src="img/meat1.png"></li>
					<li><a href="${root }cat/main?cat_no=3">육류</a></li>

				</ul>
				<ul>
					<li><img src="img/fish.png"></li>
					<li><a href="${root }cat/main?cat_no=4">해산물</a></li>

				</ul>
			</div>
		</article>

		<article id="mainNotice">
			<h4 class="card-title2">
				<a href="${root }notice/main"> 공지사항 </a>
			</h4>
			<div class="card-body2">
				<table class="table table-hover" id='board_list'>
					<thead>
						<tr>
							<th class="text-center d-none d-md-table-cell">글번호</th>
							<th class="w-50">제목</th>
							<th class="text-center d-none d-md-table-cell">작성날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var='noti' items='${notiList }' varStatus="status">
							<c:if test="${status.index < 3}">
								<tr>
									<td class="text-center d-none d-md-table-cell">${noti.no }</td>
									<td><a href='${root }notice/read?noti_no=${no}'>${noti.tit }</a>
									</td>
									<td class="text-center d-none d-md-table-cell">${noti.reg_tm }</td>
								</tr>
							</c:if>
						</c:forEach>
					</tbody>
				</table>
				<a href="board_main.html" class="btn btn-primary">더보기</a>
			</div>
		</article>

		<article id="mainBest">
			<div class="info">
				<h4>가장 많이 팔린 상품</h4>
			</div>
			<div class="bestProduct-list" style="margin-top: 10px">
				<ul class="bestProduct-listDeatil">
					<li><img
						src="${root}img/486e4733-c474-4a00-8f48-edd8b3864826.jpg"></li>
				</ul>
				<ul class="bestProduct-listDeatil">
					<li><img
						src="${root}img/486e4733-c474-4a00-8f48-edd8b3864826.jpg"></li>
				</ul>
				<ul class="bestProduct-listDeatil">
					<li><img
						src="${root}img/486e4733-c474-4a00-8f48-edd8b3864826.jpg"></li>
				</ul>
			</div>
		</article>

		<article id="mainNew">
			<div class="info">
				<h4>신상품</h4>
			</div>
			<div class="product-list" style="margin-top: 10px">

				<c:forEach var="newProduct" items="${newProdList}">
					<ul class="newProduct-listDeatil">
						<li><img src="${root}upload/${newProduct.s_img}" alt="${newProduct.name} 이미지"></li>
						<li><a href="${root}prod/product?prod_no=${newProduct.no}">${newProduct.name}</a>
						</li>
						<li>${newProduct.cost}원</li>
					</ul>
				</c:forEach>
			</div>
		</article>

		<article id="mainRev">
			<div class="info">
				<h4>리뷰 많은 상품</h4>
			</div>
			<div class="product-list" style="margin-top: 10px">

				<c:forEach var="RevProdList" items="${RevProdList}">
					<ul class="newProduct-listDeatil">
						<li><img src="${root}upload/${RevProdList.s_img}" alt="${RevProdList.name} 이미지"></li>
						<li><a href="${root}prod/product?prod_no=${RevProdList.no}">${RevProdList.name}</a>
						</li>
						<li>${RevProdList.cost}원</li>
					</ul>
				</c:forEach>
			</div>
		</article>

	</section>

	<footer>
		<c:import url="/WEB-INF/views/include/bottom.jsp"></c:import>
	</footer>
</body>
</html>