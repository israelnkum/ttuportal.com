<jsp:include page="includes/header.inc.jsp"/>
<div class="container-fluid">
    <div id="wrapper">
        <!-- Header -->
        <header id="header">
            <div class="logo bg-white">
                <img src="images/logo.png" class="img-fluid mt-3" style="height: auto; width: 50px">
            </div>
            <div class="content">
                <div class="inner">
                    <h1>TTU PORTAL</h1>
                    <p class="lead">
                        Please ensure that information displayed on the portal reflects your true identity<br/>
                        For official transcript contact the Academic Affairs Unit<br/>
                        Contact your HOD or call 0246091283 / 0243348522 / 0505284060 for any assistance.
                    </p>
                </div>
            </div>
            <nav>
                <ul>
                    <li><a href="http://admissions.ttuportal.com/">Admissions</a></li>
                    <li><a href="http://records.ttuportal.com/">Staff</a></li>
                    <li><a href="http://records.ttuportal.com/">Students</a></li>

                    <li><a href="#">Graduation</a></li>

                    <li><a href="http://ttualumniassociation.org/">Alumni</a></li>
                    <li><a href="#complain">Help</a></li>


                </ul>

            </nav>
        </header>

        <!-- Main -->
        <div id="main">
            <article id="complain">
                <h2 class="major">Help</h2>
                <form class="needs-validation " action="addStudent.jsp" method="post" novalidate>
                    <div class="form-row">
                        <div class="col-md-12 ">
                            <label for="fullName" class="mb-0">Full name</label>
                            <input type="text" class="form-control text-white " id="fullName" name="fullName" required >
                            <div class="invalid-feedback">
                                Full name is required
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-6">
                            <label for="indexNumber" class="mb-0">Index/</label>
                            <input type="text" class="form-control text-white " id="indexNumber" name="indexNumber" required>
                            <div class="invalid-feedback">
                                This field is required
                            </div>
                        </div>

                        <div class="col-md-6 ">
                            <label for="emailAddress" class="mb-0">Email Address</label>
                            <input type="email" class="form-control text-white" id="emailAddress" name="emailAddress" required>
                            <div class="invalid-feedback">
                                Email is required
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-12 " >
                            <label for="issues" class="mb-0">Complain</label>
                            <textarea class="form-control text-white " id="issues" name="issues" required></textarea>
                            <div class="invalid-feedback">
                                Complain is required
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-12">
                            <label for="complainType" class="mb-0 mt-1">Complain Type</label>
                            <select class="form-control text-white" name="complainType" id="complainType" required>
                                <option value="">Select</option>
                                <option value="Misplaced Admission Pin">Misplaced Admission Voucher</option>
                                <option value="Misplaced Password">Misplaced Password</option>
                                <option value="Cannot Register">Cannot Register</option>
                                <option value="Fees Problem">Fees Problem</option>
                                <option value="Fees Problem">Others</option>
                            </select>

                            <div class="invalid-feedback">
                                Complain type is required
                            </div>
                        </div>
                    </div>
                    <button class="btn btn-info btn-sm btn-block text-dark" type="submit"><span style="font-size: 15px;">Submit</span></button>
                </form>

                <div class="row">
                    <div class="col-md-12 text-center">
                        <p><a class="mt-0 mb-1" href="#">info@ttuportal.com</a></p>
                        <ul class="icons mt-0 mb-1">
                            <li>+233 249 685 254</li>
                            <li>+233 246 091 283</li>
                            <li>+233 505 284 060</li>
                        </ul>
                        <ul class="icons">
                            <li><a href="#" class="icon fa-twitter"></a></li>
                            <li><a href="#" class="icon fa-facebook"></a></li>
                            <li><a href="#" class="icon fa-instagram"></a></li>
                        </ul>
                    </div>
                </div>
            </article>
        </div>
<jsp:include page="includes/footer.inc.jsp"/>
