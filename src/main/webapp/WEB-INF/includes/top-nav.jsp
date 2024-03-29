<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #26A69A">
    <!-- Container wrapper -->
    <div class="container-fluid">
        <!-- Toggle button -->
        <button
                class="navbar-toggler"
                type="button"
                data-mdb-toggle="collapse"
                data-mdb-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <i class="fas fa-bars"></i>
        </button>

        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Navbar brand -->
            <a class="navbar-brand mt-2 mt-lg-0" href="#">
                <a class="navbar-brand" href="/LMS/admindashboard">LMS</a>
            </a>
            <!-- Left links -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="/LMS/admindashboard">Dashboard</a>
                </li>
                <c:if test="${isAdmin}">
                    <li class="nav-item">
                        <a class="nav-link" href="/LMS/users">Users</a>
                    </li>
                </c:if>
                <li class="nav-item">
                    <a class="nav-link" href="/LMS/books">Books</a>
                </li>
                <c:if test="${isAdmin}">
                    <li class="nav-item">
                        <a class="nav-link" href="/LMS/createbook">Add Book</a>
                    </li>
                </c:if>
            </ul>
            <!-- Left links -->
        </div>
        <!-- Collapsible wrapper -->

        <!-- Right elements -->
        <div class="d-flex align-items-center">
            <!-- Icon -->
            <span class="text-white me-3" >
                ${isAdmin == true ? "Admin" : "User"}
            </span>

            <!-- Avatar -->
            <div class="dropdown">
                <a
                        class="dropdown-toggle d-flex align-items-center hidden-arrow"
                        href="#"
                        id="navbarDropdownMenuAvatar"
                        role="button"
                        data-mdb-toggle="dropdown"
                        aria-expanded="false"
                >
                    <img
                            src="https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png"
                            class="rounded-circle"
                            height="30"
                            alt="Black and White Portrait of a Man"
                            loading="lazy"
                    />
                </a>
                <ul
                        class="dropdown-menu dropdown-menu-end"
                        aria-labelledby="navbarDropdownMenuAvatar"
                >
                    <li>
                        <a class="dropdown-item" href="#">My profile</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="/LMS/changepass">Change Password</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="/LMS/logoutuser" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Logout</a>
                        <form id="logout-form" action="/LMS/logoutuser" method="POST" class="d-none"></form>
                    </li>
                </ul>
            </div>
        </div>
        <!-- Right elements -->
    </div>
    <!-- Container wrapper -->
</nav>
<!-- Navbar -->
<br>