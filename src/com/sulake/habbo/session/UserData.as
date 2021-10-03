package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_789:String = "";
      
      private var var_560:String = "";
      
      private var var_2392:String = "";
      
      private var var_2078:int;
      
      private var var_2095:int = 0;
      
      private var var_2390:String = "";
      
      private var var_2391:int = 0;
      
      private var var_2090:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2078;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2078 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_789;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_789 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_560;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_560 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2392;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2392 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2095;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2095 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2390;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2390 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2391;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2391 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2090;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2090 = param1;
      }
   }
}
