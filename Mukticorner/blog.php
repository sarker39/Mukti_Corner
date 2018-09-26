<style media="screen">

.bg {
background: url('ckeditor/samples/img/map.jpg');
background-repeat: no-repeat;
background-position: top;
background-size: contain;
height: 500px;
}
</style>




<?php
$index_url='index.php';
$posts_url='posts/posts.php';
$top_posts_url='posts/topposts.php';
$post_url='posts/post.php';
$newpost_url='posts/newpost.php';
$login_url='users/login.php';
$logout_url='users/logout.php';
$register_url='users/register.php';
$search_url='posts/search.php';
$contact_us_url='users/contact_us.php';

session_start();


include("include/navbar.php");
include("include/bootstrap_cdn.php");

if(isset($_SESSION['username'])) {
	header("location:posts/posts.php");
}

?>

<div class="row">
	<div class="bg"></div>
</div>
