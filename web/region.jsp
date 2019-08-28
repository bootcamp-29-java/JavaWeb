<%-- 
    Document   : region_2
    Created on : Aug 27, 2019, 11:31:03 PM
    Author     : hp
--%>
<%@page import="models.Region"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        List<Region> regions = (List<Region>) session.getAttribute("regions");
        Region region = (Region) session.getAttribute("region");
        String status = (String) session.getAttribute("status");
        if (regions == null)
            response.sendRedirect("regionservlet");
        else {
    %>
    <meta charset="utf">
    <meta name="region" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="Boostrap/css/boostrap.min.css">
    <script type="text/javascript" src="Boostrap/datatables.min.js"></script>
    <script src="Boostrap/jQuery/jquery-3.3.1.min.js"></script>
    <script src="Boostrap/js/boostrap.min.js"></script>
    <script src="Boostrap/js/boostrap.js"></script>
    <%@include file="border/header.jsp" %>

    <title>Region</title>

    <!--Container Input start-->
    <div class="container">
        <form class="form-horizontal" method="post" action="regionservlet">
            <div class="form-group">
                <label class="control-label col-sm-1">ID</label>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="regionId" value="<%=(region != null) ? region.getId() : ""%>" <%=(region != null) ? "readonly" : ""%> />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-1">Nama</label>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="regionName" value="<%=(region != null) ? region.getName() : ""%>"/>
                </div>
            </div>
            <div class="control-label col-sm-3">
                <button type="submit" class="btn btn-success">Simpan</button>
            </div>
        </form>
    </div>
    <!--Container Input end-->
    
    <!--Table start-->
    <div class="container">
        <!--Show Data-->
        <table id="tabel-data" class="table table-responsive table-striped" style="width:100%">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nama</th>
                    <th>Aksi</th>
                    <th>tanpa Reaksi</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Region r : regions) {
                %>
                <tr>
                    <td><%=r.getId()%></td>
                    <td><%=r.getName()%></td>
                    <td><a href="regionservlet?action=update&&id=<%=r.getId()%>" class="btn btn-info btn-sm">Edit</a></td>
                    <td><a href="regionservlet?action=delete&&id=<%=r.getId()%>" class="btn btn-info btn-danger">Hapus</a></td>
                </tr>
                <% }%>        
            </tbody>
        </table>
        <!--End of Show Data-->
    </div>
            <!--Table end-->
    

    <!--Destroy Session-->
    <%
        }
        session.removeAttribute("region");
        session.removeAttribute("regions");
    %>

    <!--End of Destroy Session-->


<%@include file="border/footer.jsp" %>
</html>
<script type="text/javascript">
    $(document).ready(function () {
        $('#tabel-data').DataTable();
    });
</script>

<script>
    $(document).ready(function () {
        $("#btnMInsert").click(function () {
            $("#rModal").modal();
        });
    });
</script>