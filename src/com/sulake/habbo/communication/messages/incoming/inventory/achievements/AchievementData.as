package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1597:int;
      
      private var var_267:String;
      
      private var var_1898:int;
      
      private var var_1897:int;
      
      private var var_1598:int;
      
      private var var_1899:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1597 = param1.readInteger();
         this.var_267 = param1.readString();
         this.var_1898 = param1.readInteger();
         this.var_1897 = param1.readInteger();
         this.var_1598 = param1.readInteger();
         this.var_1899 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_267;
      }
      
      public function get level() : int
      {
         return this.var_1597;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1898;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_1897;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1598;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1899;
      }
   }
}
