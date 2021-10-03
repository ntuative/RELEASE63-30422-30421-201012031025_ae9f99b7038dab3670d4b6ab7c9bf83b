package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_143:int = 1;
      
      public static const const_375:int = 2;
      
      public static const const_1324:int = 3;
       
      
      private var var_1940:int;
      
      private var _state:int;
      
      private var var_1282:int;
      
      private var var_1941:int;
      
      private var var_1437:int;
      
      private var var_1936:int;
      
      private var var_1938:int = 0;
      
      private var var_1942:int;
      
      private var var_1933:String;
      
      private var var_1248:int;
      
      private var var_1561:String;
      
      private var var_1944:int;
      
      private var var_1934:String;
      
      private var _message:String;
      
      private var var_1937:int;
      
      private var var_841:String;
      
      private var var_1504:int;
      
      private var var_1931:String;
      
      private var var_322:int;
      
      private var var_1939:String;
      
      private var var_1935:String;
      
      private var var_1943:int;
      
      private var var_1932:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function get issueId() : int
      {
         return this.var_1940;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1282;
      }
      
      public function get reportedCategoryId() : int
      {
         return this.var_1941;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1437;
      }
      
      public function get priority() : int
      {
         return this.var_1936 + this.var_1938;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_1942;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_1933;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1248;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1561;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_1944;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_1934;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_1937;
      }
      
      public function get roomName() : String
      {
         return this.var_841;
      }
      
      public function get roomType() : int
      {
         return this.var_1504;
      }
      
      public function get flatType() : String
      {
         return this.var_1931;
      }
      
      public function get flatId() : int
      {
         return this.var_322;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_1939;
      }
      
      public function get roomResources() : String
      {
         return this.var_1935;
      }
      
      public function get unitPort() : int
      {
         return this.var_1943;
      }
      
      public function get worldId() : int
      {
         return this.var_1932;
      }
      
      public function set issueId(param1:int) : void
      {
         this.var_1940 = param1;
      }
      
      public function set state(param1:int) : void
      {
         this._state = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1282 = param1;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         this.var_1941 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         this.var_1437 = param1;
      }
      
      public function set priority(param1:int) : void
      {
         this.var_1936 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_1938 = param1;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         this.var_1942 = param1;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         this.var_1933 = param1;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         this.var_1248 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         this.var_1561 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         this.var_1944 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         this.var_1934 = param1;
      }
      
      public function set message(param1:String) : void
      {
         this._message = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         this.var_1937 = param1;
      }
      
      public function set roomName(param1:String) : void
      {
         this.var_841 = param1;
      }
      
      public function set roomType(param1:int) : void
      {
         this.var_1504 = param1;
      }
      
      public function set flatType(param1:String) : void
      {
         this.var_1931 = param1;
      }
      
      public function set flatId(param1:int) : void
      {
         this.var_322 = param1;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         this.var_1939 = param1;
      }
      
      public function set roomResources(param1:String) : void
      {
         this.var_1935 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         this.var_1943 = param1;
      }
      
      public function set worldId(param1:int) : void
      {
         this.var_1932 = param1;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - this.var_1437) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
   }
}
