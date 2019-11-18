<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use think\Request;
use think\Cookie;

class Index  extends Controller
{

//主页	
    public function index()
    {
    	$post=Db::name('txt')->order('time desc')->select();
    	// dump($post);exit;
    	// foreach ($post as $key => $value) {
    	// 	 $user=Db::name('user')->where('id',$value['user_id'])->select();
    	// } 	
    	// dump($user);exit;
    	$this -> assign('post',$post);   
    	// $this -> assign('user',$user); 

       return $this->fetch();  
    }

// 发帖ajxj
     public function ajxj_post(){
     	$username=Cookie::get("username");
    	$request=Request::instance();
    	$title=$request->param('title');
        $content=$request->param('content');
    	//图片 $content=$request->param('img');
    	  // dump($content);exit;
    	if ($username=="") {
    		echo 0;
    	}else{
    		if ($title=="") {
               echo 2;
            }else{
                $user=Db::name('user')->where('nickname',$username)->find();
                $data['user_id']=$user['id'];

                $data['title']=$title;
                // dump($title);exit;
                $data['content']=$content;
                 // dump($content);exit;
                $data['nickname']=$username;
                // dump($username);exit;
                $data['time']= time();
                // dump(date('YmdHis'));exit;
                //图片 $data['img'];

                $result=Db::name('txt')->insert($data);
                echo 1;
            }
    	}
     }


//登录注册
   public  function logo(){

       return $this->fetch();  
   }


//验证登录ajxj
     public  function ajxj_logo(){
        $request=Request::instance();
        $username=$request->param('user');
        $password=$request->param('password');
        // dump($password);exit;
        $user=Db::name('user')->where('nickname',$username)->find();
        // dump($user);exit;
        if ($user) {
             if($user['password']==$password){
                Cookie::set("username",$username,3600*24*7);
                echo 0;
                //登录成功并存cookie
            }else{
                echo 1;
                //登录失败
            }
        }

   }

//帖子留言
   public  function guestbook(){
        $username=Cookie::get("username");
        $request=Request::instance();
        $txt_id=$request->param('txt_id');
        // dump($txt_id);exit;
       return $this->fetch();  
   }

}
