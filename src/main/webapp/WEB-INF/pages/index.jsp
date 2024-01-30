<%@include file="../includes/header.jsp"%>

<head>
    <script>
        function validateForm() {
            var emailInput = document.getElementById("form2Example17");
            var passwordInput = document.getElementById("form2Example27");
            var emailFormat = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            if (!emailFormat.test(emailInput.value)) {
                alert("Please enter a valid email address");
                return false;
            }

            return true; // Form is valid, proceed with submission
        }
    </script>
</head>

<section class="vh-100">
    <div class="container py-4 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col col-xl-10">
                <div class="card" style="border-radius: 1rem;">
                    <div class="row g-0">
                        <div class="col-md-6 col-lg-5 d-none d-md-block">
                            <img style="margin-top: 90px; margin-left: 70px" src="<c:url value="/resources/img/Thesis-rafiki.png" />"
                                 alt="login form" class="img-fluid"/>
                        </div>
                        <div class="col-md-6 col-lg-7 d-flex align-items-center">
                            <div class="card-body p-4 p-lg-5 text-black">

                                <form action="/LMS/loginuser" method="post" onsubmit="return validateForm()">
                                    <div class="d-flex align-items-center mb-3 pb-1">
                                        <span class="h2 fw-bold mb-0">Library Management System</span>
                                    </div>

                                    <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                                    <div class="form-outline mb-4">
                                        <input type="email" id="form2Example17" class="form-control form-control-lg" name="email"/>
                                        <label class="form-label" for="form2Example17">Email address</label>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="password" id="form2Example27" class="form-control form-control-lg" name="password"/>
                                        <label class="form-label" for="form2Example27">Password</label>
                                    </div>

                                    <div class="pt-1 mb-4">
                                        <button class="btn text-white btn-md btn-block" style="background-color: #26A69A" type="submit">Login</button>
                                    </div>

                                    <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
                                    <% if (errorMessage != null) { %>
                                        <div class="alert alert-danger" role="alert">
                                            <%= errorMessage %>
                                        </div>
                                    <% } %>

                                    <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="#!" style="color: #393f81;">Register here</a></p>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="../includes/footer.jsp"%>
