<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="shared/header.jsp" />
<jsp:include page="shared/nav.jsp" />
<div class="container">
    <form action="LoginServlet" method="post">
        <h2>Login admin</h2>
        <div class="form-floating mb-3">
            <input type="text" name="username" required="" class="form-control" id="floatingInput">
            <label for="floatingInput">User Name</label>
        </div>
        <div class="form-floating">
            <input type="password" name="password" required="" class="form-control" id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">Password</label>
        </div>
        <div class="mt-2">
            <button type="submit" class="btn btn-primary">Login</button>
        </div>
        <%
            if (request.getAttribute("error") != null) {
        %>
        <div class="text-danger mb-3">
            <%=request.getAttribute("error")%>
        </div>
        <%
            }
        %>
    </form>
</div>
<jsp:include page="shared/footer.jsp" />