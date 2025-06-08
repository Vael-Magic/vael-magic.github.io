var posts=["2025/06/07/hello-world/","2025/06/08/test/"];function toRandomPost(){
    pjax.loadUrl('/'+posts[Math.floor(Math.random() * posts.length)]);
  };