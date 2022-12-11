<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="SearchPost.aspx.cs" Inherits="OurReview.SearchPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        html {
            background-color: #e1f3f0;
        }

        .container_wrap {
            width: 100vw;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .search_function_gr {
            border-radius: 3px;
            margin: 12px auto;
            background-color: #ffd800;
            padding-top: 8px;
            padding-bottom: px;
        }

        .search_function {
            display: flex;
            justify-content: space-around;
            height: 42px;
        }

        .search_result_wrap {
            display: block;
            border: 1px solid #ff0000;
            width: 420px;
        }

        .search_result {
            display: block;
            justify-content: space-around;
            /*border: 1px solid #ccc;*/
            width: 500px;
            margin: auto
        }

        .container {
            border: 1px solid #ffd800;
            width: 500px;
            margin: auto;
        }

        .search_result_detail {
            display: block;
            justify-content: space-around;
            /*margin: 2px auto;*/
            /*text-align: center;*/
            padding: 16px;
            background-color: ghostwhite;
            margin-bottom: 12px;
        }

        .avatarImg {
            border-radius: 50%;
        }

        .lbMessage {
            margin: 0px auto 8px 70px;
            color: #787272;
        }

        .title {
            text-align: center;
            margin-bottom: 0;
            margin: 14px auto;
        }

        .avatar {
            width: 50px;
            height: 50px;
            object-fit: cover;
            border-radius: 50%;
        }

        .post__image {
            width: 468px;
            height: 468px;
            object-fit: cover;
            border: 1px solid #808080;
            border-radius: 3px;
        }

        .name_avatar {
            display: flex;
        }

        .name-post-gr {
            padding-top: 10px;
            margin-left: 10px;
        }

        .user-name {
            /*padding-top: 18px;*/
            font-weight: bold;
            margin-bottom: 4px;
        }


        .post-time {
            color: cadetblue;
            font-size: 11px;
        }

        .post-content {
            margin: 12px auto;
            /*background-color: antiquewhite;*/
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container_wrap">
        <div class="container">

            <div class="search_function_gr">
                <%--<h3 class="title">Tìm kiếm bài viết</h3>
                <div class="search_function">
                    <p>
                        <asp:TextBox ID="txtFind" runat="server"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                    </p>
                </div>--%>
                <p class="lbMessage">
                    <asp:Label ID="lbMessage" runat="server" Text=""></asp:Label>
                </p>
            </div>



            <%--<div class="search_result_wrap">--%>
            <div class="search_result">
                <asp:Repeater ID="RptSearch" runat="server">
                    <ItemTemplate>
                        <div class="search_result_detail">
                            <%--<p><%#Eval("PK_iPostID") %></p>--%>
                            <div class="name_avatar">
                                <img class="avatar" src="<%#Eval("sUserAvatar") %>" />
                                <div class="name-post-gr">
                                    <p class="user-name"><%#Eval("sUserName") %></p>
                                    <p class="post-time"><%#Eval("dPostedDatetime") %></p>
                                </div>
                            </div>

                            <p class="post-content"><%#Eval("sPostContent") %></p>
                            <p>
                                <img class="post__image" src="<%#Eval("sPostImageUrl") %>" />
                            </p>
                            <%--                         <p><%#Eval("likecount") %></p>
                            <p><%#Eval("commentcount") %></p>--%>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <%--</div>--%>
        </div>
    </div>
</asp:Content>
