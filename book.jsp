<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header3.jsp" %>  
<%
String carimg=request.getParameter("carimg");
String carname=request.getParameter("carname");
String cargrade=request.getParameter("cargrade");
String oiltype=request.getParameter("oiltype");
String carMaker=request.getParameter("carMaker");
String dayPrice=request.getParameter("dayPrice");
String monthlyPrice=request.getParameter("monthlyPrice");
%>
  
  <section id="intro" class="main style1 dark fullscreen">
				<div class="content">
					<header style="margin-bottom: 0;">						
						<img src="images/carimg/${carListVO.carimg}.png" width="300px" alt="이미지 준비중">
						<table>
						<tr>
						<td width="25%">
						<h3>차량명 :</h3> 
						</td>
						<td width="25%"><h3>${carListVO.carMaker} - ${carListVO.carName} (${carListVO.oiltype}) </h3></td>
						</tr>
						<tr>
						<td width="25%"><h3>
						하루 렌트가격 : </h3> 
						</td>
						<td width="25%"><h3>
						<c:set var="price" value="${carListVO.dayPrice}"/>
				<c:choose>
				<c:when test="${price eq 0}">
				정확한 금액은 문의 바람
				</c:when>
				<c:otherwise>
				<fmt:formatNumber value="${carListVO.dayPrice}"/>원
				</c:otherwise>				
				</c:choose></h3> </td>
						</tr>						
						<tr>						
						<td><h3>
						한달 렌트가격 : </h3> 
						</td>
						<td><h3><c:set var="price1" value="${carListVO.monthlyPrice}"/>
				<c:choose>
				<c:when test="${price1 eq 0}">
				정확한 금액은 문의 바람
				</c:when>
				<c:otherwise>
				<fmt:formatNumber value="${carListVO.monthlyPrice}"/>원
				</c:otherwise>				
				</c:choose></h3> </td>						
						</tr>
						</table>
						<p style="text-align: left;">
						*토요일/일요일/공휴일 예약 시, 예약금은 대여료의 20% 입니다.
						<br>
						*계약된 대여기간 전 반납 시 정상요금 기준으로 요금 반환합니다.
						<br>
						*요금표의 금액은 자차보험 미적용 기준 금액으로, 자차보험은 선택사항 입니다.
						<br>
						*렌트는 만 26세 이상 가능하며, 만 나이는 렌트일 기준 및, 고객님의 생년월일을 기준으로 합니다.
						</p>
						
					</header>
					
    <!--예약페이지 들어가는 곳 시작<img src="images/temp.png">--->
    <div id="itemdetail" >
      <form  method="post" name="bookform" action="BandiServlet?command=booked">    
        <fieldset>          
          <table width="100%">
          
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
    <option value="${carListVO.carGrade}" selected="selected">${carListVO.carGrade}</option>
    </select>
        </td>
			<td><h3>희망차량 : </h3></td>
			<td><input type="text" value="${carListVO.carName}" name="wantCarName"></td>
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
    
				
			</section>
  
<%@ include file="../footer.jsp" %>    