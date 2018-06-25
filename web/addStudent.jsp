<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="org.hibernate.cfg.Configuration" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="com.studentmodal.org.Student" %>
<%@ page import="com.studentmodal.org.sendMail" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String fullName = request.getParameter("fullName");
    String indexNumber = request.getParameter("indexNumber");
    String emailAddress = request.getParameter("emailAddress");
    String issues = request.getParameter("issues");
    String complain_type = request.getParameter("complainType");


    SessionFactory factory = new Configuration()
                            .configure("hibernate.cfg.xml")
                            .addAnnotatedClass(Student.class)
                            .buildSessionFactory();

    //create session

    Session sess = factory.getCurrentSession();
    try {

        //create a student object

        Student temStudent = new Student(fullName,indexNumber, emailAddress,issues,complain_type);
        //begin a transaction

        sess.beginTransaction();
        // save the student object


        sess.save(temStudent);
        //commit transaction

        sess.getTransaction().commit();



        if (sess != null){

            sendMail.sendEmail(emailAddress,"TPConnect","This is the test");
            //srms.ttuportal.com/api/student/{indexnumber}/password
            response.sendRedirect("index.jsp?success".concat("This is success"));
        }
    }finally {
        factory.close();
    }


%>