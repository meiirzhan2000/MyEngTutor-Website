<%@ Page Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="MyEngTutor_Website.profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="New Scripts/profile.js" defer></script>

    <section style="background-color: #eee;">
        <div class="container py-5">
        <div class="row">
            <div class="col">
            <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
                <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="userPage.aspx">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">User Profile</li>
                </ol>
            </nav>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-4">
            <div class="card mb-4">
                <div class="card-body text-center">
                <img id="profileImage" runat="server" src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
                     class="rounded-circle img-fluid" style="width: 150px;">
                <h5 class="my-3" id="fname" runat="server">Error</h5>
                <div class="d-flex justify-content-center mb-2">
                    <a href="userProfileSettings" class="btn btn-outline-primary ms-1">Edit Profile</a>
                </div>
                </div>
            </div>
            <div class="card mb-4 mb-lg-0">
                <div class="card-body text-center">
                <img src="https://st.depositphotos.com/1431107/2320/v/450/depositphotos_23201462-stock-illustration-sorry-smiley.jpg" alt="avatar"
                    class="rounded-circle img-fluid" style="width: 150px;">
                <h5 class="my-3">The certificate is not available</h5>
                </div>
            </div>
            </div>
            <div class="col-lg-8">
            <div class="card mb-4">
                <div class="card-body">
                <div class="row">
                    <div class="col-sm-3">
                    <p class="mb-0">First Name</p>
                    </div>
                    <div class="col-sm-9">
                    <p ID="firstName" runat="server" class="text-muted mb-0">Not Found</p>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-3">
                    <p class="mb-0">Second Name</p>
                    </div>
                    <div class="col-sm-9">
                    <p ID="sName" runat="server" class="text-muted mb-0">Not Found</p>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-3">
                    <p class="mb-0">Email</p>
                    </div>
                    <div class="col-sm-9">
                    <p ID="email" runat="server" class="text-muted mb-0">Not Found</p>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-3">
                    <p class="mb-0">Password</p>
                    </div>
                    <div class="col-sm-9">
                    <p class="text-muted mb-0">***********</p>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-3">
                    <p class="mb-0">Status</p>
                    </div>
                    <div class="col-sm-9">
                    <p class="text-muted mb-0">Normal User</p>
                    </div>
                </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                <div class="card mb-4 mb-md-0">
                    <div class="card-body">
                    <p class="mb-4"><span class="text-primary font-italic me-1">PRACTICE PROGRESS</span>
                    </p>
                    <p class="mb-1" style="font-size: .77rem;">Listening</p>
                    <div class="progress rounded" style="height: 5px;">
                        <div runat="server" id="listeningPrac" class="progress-bar" role="progressbar" style="width: 70%" aria-valuenow="80"
                        aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <p class="mt-4 mb-1" style="font-size: .77rem;">Reading</p>
                    <div class="progress rounded" style="height: 5px;">
                        <div runat="server" id="readingPrac" class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="72"
                        aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <p class="mt-4 mb-1" style="font-size: .77rem;">Speaking</p>
                    <div class="progress rounded" style="height: 5px;">
                        <div runat="server" id="speakingPrac" class="progress-bar" role="progressbar" style="width: 30%" aria-valuenow="89"
                        aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <p class="mt-4 mb-1" style="font-size: .77rem;">Writing</p>
                    <div class="progress rounded" style="height: 5px;">
                        <div runat="server" id="writingPrac" class="progress-bar" role="progressbar" style="width: 20%" aria-valuenow="55"
                        aria-valuemin="0" aria-valuemax="100"></div>
                    </div>

                    <!--
                    <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API</p>
                    <div class="progress rounded mb-2" style="height: 5px;">
                        <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"
                        aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                        -->

                    </div>
                </div>
                </div>
                <div class="col-md-6">
                <div class="card mb-4 mb-md-0">
                    <div class="card-body">
                    <p class="mb-4"><span class="text-primary font-italic me-1">SKILL LEVELS</span>
                    </p>
                    <p class="mb-1" style="font-size: .77rem;">Listening</p>
                    <div class="progress rounded" style="height: 5px;">
                        <div class="progress-bar" role="progressbar" style="width: 10%" aria-valuenow="80"
                        aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <p class="mt-4 mb-1" style="font-size: .77rem;">Reading</p>
                    <div class="progress rounded" style="height: 5px;">
                        <div class="progress-bar" role="progressbar" style="width: 30%" aria-valuenow="72"
                        aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <p class="mt-4 mb-1" style="font-size: .77rem;">Speaking</p>
                    <div class="progress rounded" style="height: 5px;">
                        <div class="progress-bar" role="progressbar" style="width: 60%" aria-valuenow="89"
                        aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <p class="mt-4 mb-1" style="font-size: .77rem;">Writing</p>
                    <div class="progress rounded" style="height: 5px;">
                        <div class="progress-bar" role="progressbar" style="width: 70%" aria-valuenow="55"
                        aria-valuemin="0" aria-valuemax="100"></div>
                    </div>

                    <!--
                    <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API</p>
                    <div class="progress rounded mb-2" style="height: 5px;">
                        <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"
                        aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                        -->

                    </div>
                </div>
                </div>
            </div>
            </div>
        </div>
        </div>
        </section>
</asp:Content>
