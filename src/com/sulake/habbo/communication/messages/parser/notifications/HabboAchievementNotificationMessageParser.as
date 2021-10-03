package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1597:int;
      
      private var var_1739:int;
      
      private var var_1897:int;
      
      private var var_1598:int;
      
      private var var_1275:int;
      
      private var var_1927:String = "";
      
      private var var_2375:String = "";
      
      private var var_2374:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1597 = param1.readInteger();
         this.var_1927 = param1.readString();
         this.var_1739 = param1.readInteger();
         this.var_1897 = param1.readInteger();
         this.var_1598 = param1.readInteger();
         this.var_1275 = param1.readInteger();
         this.var_2374 = param1.readInteger();
         this.var_2375 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1597;
      }
      
      public function get points() : int
      {
         return this.var_1739;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_1897;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1598;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1275;
      }
      
      public function get badgeID() : String
      {
         return this.var_1927;
      }
      
      public function get achievementID() : int
      {
         return this.var_2374;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2375;
      }
   }
}
