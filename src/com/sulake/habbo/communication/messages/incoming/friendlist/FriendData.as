package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_813:int;
      
      private var var_701:Boolean;
      
      private var var_1433:Boolean;
      
      private var var_560:String;
      
      private var var_1282:int;
      
      private var var_1784:String;
      
      private var var_1696:String;
      
      private var var_1695:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_813 = param1.readInteger();
         this.var_701 = param1.readBoolean();
         this.var_1433 = param1.readBoolean();
         this.var_560 = param1.readString();
         this.var_1282 = param1.readInteger();
         this.var_1784 = param1.readString();
         this.var_1696 = param1.readString();
         this.var_1695 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_813;
      }
      
      public function get online() : Boolean
      {
         return this.var_701;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1433;
      }
      
      public function get figure() : String
      {
         return this.var_560;
      }
      
      public function get categoryId() : int
      {
         return this.var_1282;
      }
      
      public function get motto() : String
      {
         return this.var_1784;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1696;
      }
      
      public function get realName() : String
      {
         return this.var_1695;
      }
   }
}
