package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2209:int;
      
      private var var_2208:int;
      
      private var var_701:Boolean;
      
      private var var_2207:int;
      
      private var var_2206:int;
      
      private var var_2205:int;
      
      private var var_2210:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2209 = param1.readInteger();
         this.var_2208 = param1.readInteger();
         this.var_701 = param1.readBoolean();
         this.var_2207 = param1.readInteger();
         this.var_2206 = param1.readInteger();
         this.var_2205 = param1.readInteger();
         this.var_2210 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2209;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2208;
      }
      
      public function get online() : Boolean
      {
         return this.var_701;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2207;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2206;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2205;
      }
      
      public function get banCount() : int
      {
         return this.var_2210;
      }
   }
}
