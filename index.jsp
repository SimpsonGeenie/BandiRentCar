<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
  
  <!-- Intro -->
			<section id="intro" class="main style1 dark fullscreen">
				<div class="content">
					<header style="margin-bottom: 0;">
						<h2 id="font">전화 한통으로 편하게 바로 예약</h2>
						<br>
						<h2 id="font00" style="margin-bottom: 0;" >1544 - 4972</h2>
					</header>
					
					<footer>
					<br>
					<br>
					<br>
					<br>
					<br>	
					<br>			
					<h3 style="margin-bottom: 10px;">
					<a href="#one" id="font1">국산 렌트카 보기</a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#two" id="font1">수입 렌트카 보기</a>
					</h3>						
						<br>
						
					</footer>
				</div>
			</section>

		<!-- One -->
			<section id="one" class="main style2 right dark fullscreen">
			
				<div class="content box style2">					
					<header>
					 <h2 style="color: #9599E2 !important; font: bold !important; text-align: left; margin-left: 43%;">국 산 차 종</h2>
					</header>
				<div id="carframewrap">	
			<div id="car_content" class="carcon">	
<form  name="carselectData" method="post">			
			<ul id="carframe" style="margin-bottom: 0;">		
			<c:forEach items="${bandisCarList }"  var="carListVO" >	
        <li id="carEntSeq${carListVO.carEntSeq}">        	
             <a href="javascript:carselect(${carListVO.carSeq});">
            <img class="carpic1" src="images/carimg/${carListVO.carimg}.png" alt="이미지 준비중"/><br>
				<span class="car-name"><h5><strong>${carListVO.carMaker} 
				<br>&lt;${carListVO.carName}&gt; </strong>
				<br>1일 : <c:set var="price" value="${carListVO.dayPrice}"/>
				<c:choose>
				<c:when test="${price eq 0}">
				문의 바람
				</c:when>
				<c:otherwise>
				<fmt:formatNumber value="${carListVO.dayPrice}"/>원
				</c:otherwise>				
				</c:choose>
				<br>1달 : 
				<c:set var="price1" value="${carListVO.monthlyPrice}"/>
				<c:choose>
				<c:when test="${price1 eq 0}">
				문의 바람
				</c:when>
				<c:otherwise>
				<fmt:formatNumber value="${carListVO.monthlyPrice}"/>원
				</c:otherwise>				
				</c:choose></h5></span>
				<input type="hidden" value="${carListVO.oiltype}">
          </a>
       </li>
      </c:forEach>
       </ul>
      </form>      
    		</div>
		</div>
	<div id="arrow">
		<a class="prev" href="#" onclick="return carscrollbtn('leftbtn')"><h2 id="slidebtn">&lt;</h2></a>
		<a class="next" href="#" onclick="return carscrollbtn('rightbtn')"><h2 id="slidebtn">&gt;</h2></a>			
	</div>
	<button id="more" onclick="allCarGal()"><h4>보유 차량 더보기</h4></button>
</div>
				<a href="#two" class="button style2 down anchored">Next</a>
			</section>
			

		<!-- Two -->
			<section id="two" class="main style2 left dark fullscreen">
				<div class="content box style2">
					<header>
						<h2 style="color: #CCCCFF !important; text-align: right; margin-right: 43%">수 입 차 종</h2>
					</header>
				<div id="carframewrap">	
			<div id="car_content" class=" carcon">
			<form  name="carselectData1" method="post">	
			<ul id="carframe1" style="margin-bottom: 0;">		
			<c:forEach items="${overSeaCarList }"  var="carListVO" >	
        <li>        	
             <a href="javascript:carselect(${carListVO.carSeq});">
            <img class="carpic1" src="images/carimg/${carListVO.carimg}.png" alt="이미지 준비중"/><br>
				<span class="car-name"><h5><strong>${carListVO.carMaker} 
				<br>&lt;${carListVO.carName}&gt; </strong>
				<br>1일 : <c:set var="price" value="${carListVO.dayPrice}"/>
				<c:choose>
				<c:when test="${price eq 0}">
				문의 바람
				</c:when>
				<c:otherwise>
				<fmt:formatNumber value="${carListVO.dayPrice}"/>원
				</c:otherwise>				
				</c:choose>
				<br>1달 : 
				<c:set var="price1" value="${carListVO.monthlyPrice}"/>
				<c:choose>
				<c:when test="${price1 eq 0}">
				문의 바람
				</c:when>
				<c:otherwise>
				<fmt:formatNumber value="${carListVO.monthlyPrice}"/>원
				</c:otherwise>				
				</c:choose></h5></span>
				<input type="hidden" value="${carListVO.oiltype}">
          </a>
       </li>
      </c:forEach>
       </ul>
       </form>
			</div>
		</div>
	<div id="arrow">
		<a class="prev" href="#" onclick="return carscrollbtn1('leftbtn')"><h2 id="slidebtn">&lt;</h2></a>
		<a class="next" href="#" onclick="return carscrollbtn1('rightbtn')"><h2 id="slidebtn">&gt;</h2></a>		
	</div>
	<button id="more1" onclick="allCarGal()"><h4>보유 차량 더보기</h4></button>
				</div>				
				<a href="#rentrule" class="button style2 down anchored">Next</a>
			</section>


<section id="rentrule" class="main style3 primary">
				<div class="content">
					<header>
						<h2 id="#font2">렌트규정</h2>
						<p id="#font2">
						반디렌트카에서는 여러분의 자동차 렌트를 신속하고 편하게 도와드리고 있습니다.
						</p>
					</header>

					<!-- Gallery  -->
						<div class="gallery">
							<article class="from-left">
								<a href="images/fulls/01.jpg" class="image fit"><img src="images/thumbs/01.jpg" title="Airchitecture I" alt="" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/02.jpg" class="image fit"><img src="images/thumbs/02.jpg" title="Airchitecture II" alt="" /></a>
							</article>
							<article class="from-left">
								<a href="images/fulls/03.jpg" class="image fit"><img src="images/thumbs/03.jpg" title="Air Lounge" alt="" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/04.jpg" class="image fit"><img src="images/thumbs/04.jpg" title="Carry on" alt="" /></a>
							</article>
							<article class="from-left">
								<a href="images/fulls/05.jpg" class="image fit"><img src="images/thumbs/05.jpg" title="The sparkling shell" alt="" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/06.jpg" class="image fit"><img src="images/thumbs/06.jpg" title="Bent IX" alt="" /></a>
							</article>
						</div>
						
				</div>
			</section>


		<!-- Contact -->
			<section id="contact" class="main style3 secondary">
				<div class="content">
					<header>
						<h2>예약하기</h2>
						<p>전화 상담으로 간편하게 렌트를 시작해 보세요.</p>
					</header>
					<div class="box">
						
      <form  method="post" name="formm" action="BandiServlet?command=book">    
        <fieldset>          
          <table width="100%" border="0" style="table-layout:fixed; border-color: #e5e6e7;">
          
          <tr>
          <td width="20%"><h3>예약자 : </h3></td>
			<td width="30%"><input type="text" name="checkername"></td>
			<td width="20%"><h3>연락처 : </h3></td>
			<td width="30%"><input type="tel" name="phonenum" ></td>
          </tr>
          <tr>
			<td><h3>카톡ID : </h3></td>
			<td><input type="text" name="katalkid"></td>
			<td colspan=2 style="text-align: left; padding-left: 60px;"><h3>해외 체류 등으로 전화 상담이 <br>어려우시면 카톡ID를 남겨주세요.</h3>
			</td>
  		</tr>
  		<tr>
			<td ><h3>대여일시 : </h3></td>
			<td colspan=3 style="text-align: left;">
			<input type="date" name="hopedate" > 일
			<input type="time" name="hopedate1" > 분</td>
			
  		</tr>
  		<tr>
			<td><h3>반납일시 : </h3></td>
			<td colspan=3 style="text-align: left;">
			<input type="date" name="rentbackdate"> 일
			<input type="time" name="rentbackdate1"> 분</td>			
  		</tr>
  		<tr>
			<td><h3>차량등급 : </h3></td>
			<td><select name="cargrade" >			
    <option style="color: #000000" value="경차">경차</option>
    <option style="color: #000000" value="소형">소형</option>
    <option style="color: #000000" value="준중형">준중형</option>
    <option style="color: #000000" value="중형">중형</option>
    <option style="color: #000000" value="대형">대형</option>
    <option style="color: #000000" value="SUV/RV">SUV/RV</option>
    <option style="color: #000000" value="특수">특수</option>    
    </select>
        </td>
			<td><h3>희망차량 : </h3></td>
			<td><input type="text" name="wantCarName"></td>
  		</tr>
  		<tr>
			<td><h3>대여지점 : </h3></td>
			<td><select name="where">
    <option style="color: #000000" value="서울본점" selected="selected">서울본점</option>
    <option style="color: #000000" value="관악지점">관악지점</option>
    <option style="color: #000000" value="동부지점">동부지점</option>
    <option style="color: #000000" value="강동지점">강동지점</option>
    <option style="color: #000000" value="방배지점">방배지점</option>
    <option style="color: #000000" value="분당미금점">분당미금점</option>
    <option style="color: #000000" value="분당궁내점">분당궁내점</option>
    <option style="color: #000000" value="서현지점">서현지점</option>
    <option style="color: #000000" value="춘천지점">춘천지점</option>
    <option style="color: #000000" value="스타지점">스타지점</option>
    
    </select></td>
			<td><h3>대여장소 : </h3></td>
			<td><input type="text" name="hopewhere" ></td>
  		</tr>
  		<tr>
  		<td colspan=4>
  		<input type="hidden" value="${carListVO.carSeq}" name="carSeq">
  		<input type="submit"  value="상담하기"  class="submit" onClick="go_booking()">
			<input type="reset"   value="취소" class="cancel" onClick="go_mov()">
  		</td>
  		</tr>
          </table>
          </fieldset>
      </form>  
   
					</div>
				</div>
			</section>

		<!-- Footer -->
			

    		
<%@ include file="../footer.jsp" %>    