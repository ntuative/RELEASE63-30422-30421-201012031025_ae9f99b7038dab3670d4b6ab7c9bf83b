package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1010:String = "M";
      
      public static const const_1365:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_170:Number = 0;
      
      private var var_236:int = 0;
      
      private var _name:String = "";
      
      private var var_2410:int = 0;
      
      private var var_789:String = "";
      
      private var var_560:String = "";
      
      private var var_2392:String = "";
      
      private var var_2078:int;
      
      private var var_2095:int = 0;
      
      private var var_2390:String = "";
      
      private var var_2391:int = 0;
      
      private var var_2090:int = 0;
      
      private var var_2409:String = "";
      
      private var var_163:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_163 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_163)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_171;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_163)
         {
            this.var_171 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_170;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_163)
         {
            this.var_170 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_236;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_163)
         {
            this.var_236 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_163)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_2410;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_163)
         {
            this.var_2410 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_789;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_163)
         {
            this.var_789 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_560;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_163)
         {
            this.var_560 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2392;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_163)
         {
            this.var_2392 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2078;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_163)
         {
            this.var_2078 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2095;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_163)
         {
            this.var_2095 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2390;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_163)
         {
            this.var_2390 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2391;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_163)
         {
            this.var_2391 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2090;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_163)
         {
            this.var_2090 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2409;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_163)
         {
            this.var_2409 = param1;
         }
      }
   }
}
