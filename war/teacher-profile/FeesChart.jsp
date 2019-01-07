 
 <%@page import = "java.util.*" %>
<%@page import = "java.security.*" %>
<%@page import = "com.gharpeshiksha.entity.*" %>
<%@page import = "com.googlecode.objectify.*" %>
<%@page import = "static com.gharpeshiksha.database.OfyService.*" %>

<%if(session.getAttribute("login")!=null){ %>

    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-xs-12">

          

          

           

          <!-- Post Content -->
          <p class="lead">If you are new comer, You've probably been in a doubt of current market fees of home tuition in Delhi and NCR here is fees chart for home tuitions. Teachers should quote their fees as per the market price mentioned in table.</p>

<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Fees Chart</div>
  <div class="panel-body" style="overflow: scroll;">
    <!-- Table -->
  <table class="table-responsive table-bordered">
    <thead>
      <tr>
        <th>Course Category</th>
        <th>Grade C Teacher(Exp. less than 2 years)</th>
        <th>Grade B Teacher(Exp. 2-5 years)</th>
       <th>Grade A Teacher(Exp. 5+ years)</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Nursery School</td>
        <td>2,500-3,500/month<sup>(*)</sup></td>
        <td>3,000-4,000/month<sup>(*)</sup></td>
        <td>3,000-4,000/month<sup>(*)</sup></td>
      </tr>
      <tr>
        <td>Class I-V</td>
        <td>3,000-4,000/month<sup>(*)</sup></td>
        <td>3,500-5,000/month<sup>(*)</sup></td>
        <td>4,500-6,000/month<sup>(*)</sup></td>
      </tr>
      <tr>
        <td>Class VI-VIII (All Subjects)</td>
        <td>4,000-5,000/month<sup>(*)</sup></td>
        <td>5,000-6,000/month<sup>(*)</sup></td>
        <td>6,000-8,000/month<sup>(*)</sup></td>
      </tr>
      <tr>
        <td>Class VI-VIII (Particular Subject)</td>
        <td>250-400/hour</td>
        <td>350-500/hour</td>
        <td>400-600/hour</td>
      </tr>
      <tr>
        <td>Class IX-X (All Subjects)</td>
        <td>5,000-6,000/month<sup>(*)</sup></td>
        <td>6,000-7,000/month<sup>(*)</sup></td>
        <td>7,000-8,000/month<sup>(*)</sup></td>
      </tr>
      <tr>
        <td>Class IX-X (Particular Subject)</td>
        <td>300-400/hour</td>
        <td>400-500/hour</td>
        <td>500-700/hour</td>
      </tr>
      <tr>
        <td>Class XI-XII (Particular Subject)</td>
        <td>400-500/hour</td>
        <td>500-600/hour</td>
        <td>600-800/hour</td>
      </tr>
      <tr>
        <td>UnderGraduation/PostGraduation</td>
        <td>500-600/hour</td>
        <td>600-800/hour</td>
        <td>700-1000/hour</td>
      </tr>
      <tr>
        <td>Competitive Exams(UPSC,SCC,IIT JEE,NEET,CPT etc)</td>
        <td>500-600/hour</td>
        <td>600-800/hour</td>
        <td>700-1000/hour</td>
      </tr>
      <tr>
        <td>Foreign Languages</td>
        <td>400-500/hour</td>
        <td>500-600/hour</td>
        <td>600-800/hour</td>
      </tr>
    </tbody>
  </table>

  </div>

  
</div>
          <p><sup>(*)</sup> Per month fees is based on 20-24 Sessions per month</p>



          <p>However, this is just an idea of price. Fees usually depend on Teacher's Experience, Qualification, Past Results etc. It may vary from locality to locality and subject to mutual negotiation between teacher and parents.</p>


          <hr>

           

         
 

        </div>

        <!-- Sidebar Widgets Column -->
        

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->


<%}else{
	response.sendRedirect("https://gharpeshiksha.com/tutor-section.jsp");
} %>
 