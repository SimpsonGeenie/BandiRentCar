<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="/header3.jsp"%>
<section id="intro" class="main style1 dark fullscreen">
				
<article>	
<form name="carselectData1" method="post">

<div>
<table style="margin-bottom: 0;" width="50%">
<tr><td style="text-align: left;">
<button class ="galbtn1 active" name="galbtn1" onclick="allCarGal1('0')"><h4>단기렌트</h4></button>
<button class ="galbtn2" name="galbtn2" onclick="allCarGal1('1')"><h4>월 렌트</h4></button>
</td>

</tr>
</table>
<table style="background-color: #ffffff; color:#82bfff; margin-top: 0; margin-bottom: 0;" width="100%">

<tr  style="margin-top: 10px;">


<c:forEach items="${makerList}" var="makerVO" begin="0" end="4">
<td width="20%" style="text-align: left;">

    <label for="${makerVO.carMaker}">
    <c:choose>
  <c:when test="${nmaker==makerVO.carMaker}">
      <input style="margin-left: 20px;" type="checkbox" name="selectedNot" 
onclick="selectedCar('${makerVO.carMaker}',${periodtype} )" id="${makerVO.carMaker}" value="${makerVO.carMaker}"
>
  </c:when>
<c:otherwise>
<input style="margin-left: 20px;" type="checkbox" name="selectedcar" 
onclick="selectedCar('${makerVO.carMaker}',${periodtype} )" id="${makerVO.carMaker}" value="${makerVO.carMaker}"
checked="checked"></c:otherwise>
</c:choose>
${makerVO.carMaker}</label>
</td>
</c:forEach>

</tr>
<tr>
<c:forEach items="${makerList}" var="makerVO" begin="5" end="9">
<td width="20%" style="text-align: left;"><label for="${makerVO.carMaker}">
    <c:choose>
  <c:when test="${nmaker==makerVO.carMaker}">
      <input style="margin-left: 20px;" type="checkbox" name="selectedNot" 
onclick="selectedCar('${makerVO.carMaker}',${periodtype} )" id="${makerVO.carMaker}" value="${makerVO.carMaker}"
>
  </c:when>
<c:otherwise>
<input style="margin-left: 20px;" type="checkbox" name="selectedcar" 
onclick="selectedCar('${makerVO.carMaker}',${periodtype} )" id="${makerVO.carMaker}" value="${makerVO.carMaker}"
checked="checked"></c:otherwise>
</c:choose>
${makerVO.carMaker}</label>
</td>
</c:forEach>
</tr>
<tr>
<c:forEach items="${makerList}" var="makerVO" begin="10" end="14">
<td width="20%" style="text-align: left;"><label for="${makerVO.carMaker}">
    <c:choose>
  <c:when test="${nmaker==makerVO.carMaker}">
      <input style="margin-left: 20px;" type="checkbox" name="selectedNot" 
onclick="selectedCar('${makerVO.carMaker}',${periodtype} )" id="${makerVO.carMaker}" value="${makerVO.carMaker}"
>
  </c:when>
<c:otherwise>
<input style="margin-left: 20px;" type="checkbox" name="selectedcar" 
onclick="selectedCar('${makerVO.carMaker}',${periodtype} )" id="${makerVO.carMaker}" value="${makerVO.carMaker}"
checked="checked"></c:otherwise>
</c:choose>
${makerVO.carMaker}</label>
</td>
</c:forEach>
</tr>
<tr>
<c:forEach items="${makerList}" var="makerVO" begin="15" end="19">
<td width="20%" style="text-align: left;"><label for="${makerVO.carMaker}">
    <c:choose>
  <c:when test="${nmaker==makerVO.carMaker}">
      <input style="margin-left: 20px;" type="checkbox" name="selectedNot" 
onclick="selectedCar('${makerVO.carMaker}',${periodtype} )" id="${makerVO.carMaker}" value="${makerVO.carMaker}"
>
  </c:when>
<c:otherwise>
<input style="margin-left: 20px;" type="checkbox" name="selectedcar" 
onclick="selectedCar('${makerVO.carMaker}',${periodtype} )" id="${makerVO.carMaker}" value="${makerVO.carMaker}"
checked="checked"></c:otherwise>
</c:choose>
${makerVO.carMaker}</label>
</td>
</c:forEach>
</tr>


</table>

<table id="productList" width="100%" style="background-color: #ffffff; color:#82bfff; margin-top: 0;">
    
    <c:choose>
    <c:when test="${productListSize<=0}">
    <tr>
      <td colspan="7" align="center" height="23">
        등록된 상품이 없습니다.
      </td>      
    </tr>
    </c:when>
	<c:otherwise>
	<c:forEach items="${periodCarList}" var="carListVO">
    <tr>
    <c:choose><c:when test="${carListVO.periodType eq '월렌트'}">
   	  
   	<th width="20%" style="margin:10px; padding: 10px; border-bottom: 1px solid; border-bottom-color: #8b6bce;"><a href="javascript:carselect1(${carListVO.carSeq});"><h3 style="color:#9599E2;"> ${carListVO.carMaker} / ${carListVO.carName}<br>
            <img class="carpic1" src="images/carimg/${carListVO.carimg}.png" alt="이미지 준비중"/></a></th>      
   	  <td width="80%" style="text-align: left; font-size: 17px; color:#9599E2; border-bottom: 1px solid; border-bottom-color: #8b6bce;">
   	  
   	  
   	  <br><br>월<br><c:choose><c:when test="${carListVO.monthDayPrice eq 0}">
				문의바람
				</c:when>
				<c:otherwise>
				<fmt:formatNumber value="${carListVO.monthDayPrice}" />원 부터. 상세한 내용은 문의 부탁드립니다.
				</c:otherwise>				
				</c:choose>
				</td>   	  
   	  </c:when><c:otherwise>
   	  
    <th width="20%" style="margin:10px; padding: 10px; border-bottom: 1px solid; border-bottom-color: #8b6bce;"><a href="javascript:carselect1(${carListVO.carSeq});"><h3 style="color:#9599E2;"> ${carListVO.carMaker} / ${carListVO.carName}<br>
            <img class="carpic1" src="images/carimg/${carListVO.carimg}.png" alt="이미지 준비중"/></a></th>      
   	  <td width="13%" style="text-align: left; font-size: 17px; color:#9599E2; border-bottom: 1px solid; border-bottom-color: #8b6bce;">
   	  
   	  
   	  <br><br>1일<br><c:choose><c:when test="${carListVO.dayPrice eq 0}">
				문의바람
				</c:when>
				<c:otherwise>
				<fmt:formatNumber value="${carListVO.dayPrice}" />원
				</c:otherwise>				
				</c:choose>
				</td>
				
				<td width="13%" style="text-align: left; font-size: 17px; color:#9599E2; border-bottom: 1px solid; border-bottom-color: #8b6bce;"><br><br>7일<br><c:choose>
				<c:when test="${carListVO.weekPrice eq 0}">
				문의바람
				</c:when>
				<c:otherwise>
				<fmt:formatNumber value="${carListVO.weekPrice}"/>원
				</c:otherwise>				
				</c:choose></td>
				
				<td width="13%" style="text-align: left; font-size: 17px; color:#9599E2; border-bottom: 1px solid; border-bottom-color: #8b6bce;"><br><br>10일<br><c:choose>
				<c:when test="${carListVO.tendayPrice eq 0}">
				문의바람
				</c:when>
				<c:otherwise>
				<fmt:formatNumber value="${carListVO.tendayPrice}"/>원
				</c:otherwise>				
				</c:choose></td>
				
				<td width="13%" style="text-align: left; font-size: 17px; color:#9599E2; border-bottom: 1px solid; border-bottom-color: #8b6bce;"><br><br>15일<br><c:choose>
				<c:when test="${carListVO.fifteendayPrice eq 0}">
				문의바람
				</c:when>
				<c:otherwise>
				<fmt:formatNumber value="${carListVO.fifteendayPrice}"/>원
				</c:otherwise>				
				</c:choose></td>
				
				<td width="13%" style="text-align: left; font-size: 17px; color:#9599E2; border-bottom: 1px solid; border-bottom-color: #8b6bce;"><br><br>20일<br><c:choose>
				<c:when test="${carListVO.twentydayPrice eq 0}">
				문의바람
				</c:when>
				<c:otherwise>
				<fmt:formatNumber value="${carListVO.twentydayPrice}"/>원
				</c:otherwise>				
				</c:choose></td>
				
				<td width="13%" style="text-align: left; font-size: 17px; color:#9599E2; border-bottom: 1px solid; border-bottom-color: #8b6bce;"><br><br>30일<br><c:choose>
				<c:when test="${carListVO.monthlyPrice eq 0}">
				문의바람
				</c:when>
				<c:otherwise>
				<fmt:formatNumber value="${carListVO.monthlyPrice}"/>원
				</c:otherwise>				
				</c:choose></td>			
				</c:otherwise></c:choose>	
    </tr>
    </c:forEach>
    <tr><td colspan="8" style="text-align: center;"> ${paging} </td></tr>
	</c:otherwise>	
</c:choose>  


</table>
</div>
</form> 
</article>	
			</section>
<%@ include file="../footer.jsp" %>    