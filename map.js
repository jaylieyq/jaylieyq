buttonTap:function(){
  wx.getLocation({
    type:"gcj02",
    success:function(res){
   wx:openLocation({
     latitude:res.latitude,
     longitude:res.longitude
   })
    }
  })
},
