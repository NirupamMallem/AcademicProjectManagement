<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
      <title>Academic Project Management System</title>
      <link rel="stylesheet" href="studenthomestyle.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
 <nav>
         <label class="logo">ProMent</label>
         <ul>
            <li><a class="active" href="">Project</a></li>
             <li><a href="review">Review</a></li>
            <li><a href="submission">Submissions</a></li>
            <li><a href="facultyhome">Back</a></li>
         </ul>
      </nav>

<br>
<h3 align=right>Welcome&nbsp;<c:out value="${funame}"></c:out></h3>

    
    
    
    
    <center>
    <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-10">
                <div class="panel">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col col-sm-3 col-xs-12">
                                <h4 class="title">Submission <span></span></h4>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
    <th>Review ID</th>
    <th>Submitted on</th>
    
    <th>Rating</th>
    <th>Feedback</th>

    
 
                                </tr>
                            </thead>
                            <tbody>
                                    <c:forEach items="${submissionlist}" var="submission">
                                    
    
    <tr>
    
    <td> <c:out value="${submission.reviewId}"></c:out>   </td>
    <td> <c:out value="${submission.submissiontime}"></c:out>   </td>
    <td> <c:out value="${submission.rating}"></c:out>   </td>
    <td> <c:out value="${submission.feedback}"></c:out>   </td>
	
     
  
    
    </tr>
    </c:forEach>

                            </tbody>
                        </table>
                    </div>

        </div>
    </div>

<tr>
<td><label>Review Number</label></td>

<select name="previewid" required="required">
        
        <option value="-1">---Select---</option>
        <c:forEach items="${reviewnumber}" var="rn">
        <option value="${rn}">  ${rn} </option>
 		</c:forEach>
 		
        </select>
</tr>

<tr>
<td><label>Deadline</label></td>
<td><input type="date" name="deadline" required></td>
</tr>
<tr>
<td><label>Component</label></td>
<td><input type="text" name="component" required></td>
</tr>


<tr align=center>

<td colspan="2"><input type="submit" value="Add Review" class="button"></td>

</tr>

</table>

</form>
    
    
    
    

</body>
</html>

 
