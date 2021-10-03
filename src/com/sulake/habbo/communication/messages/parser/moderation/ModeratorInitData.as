package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitData implements IDisposable
   {
       
      
      private var var_1209:Array;
      
      private var var_1210:Array;
      
      private var _issues:Array;
      
      private var var_969:Array;
      
      private var var_2039:Boolean;
      
      private var var_2038:Boolean;
      
      private var var_2034:Boolean;
      
      private var var_2037:Boolean;
      
      private var var_2036:Boolean;
      
      private var var_2035:Boolean;
      
      private var var_2040:Boolean;
      
      private var _disposed:Boolean;
      
      public function ModeratorInitData(param1:IMessageDataWrapper)
      {
         super();
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         this._issues = [];
         this.var_1209 = [];
         this.var_1210 = [];
         this.var_969 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.parse(param1))
            {
               this._issues.push(_loc2_.issueData);
            }
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1209.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_969.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         this.var_2039 = param1.readBoolean();
         this.var_2038 = param1.readBoolean();
         this.var_2034 = param1.readBoolean();
         this.var_2037 = param1.readBoolean();
         this.var_2036 = param1.readBoolean();
         this.var_2035 = param1.readBoolean();
         this.var_2040 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1210.push(param1.readString());
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1209 = null;
         this.var_1210 = null;
         this._issues = null;
         for each(_loc1_ in this.var_969)
         {
            _loc1_.dispose();
         }
         this.var_969 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get messageTemplates() : Array
      {
         return this.var_1209;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return this.var_1210;
      }
      
      public function get issues() : Array
      {
         return this._issues;
      }
      
      public function get offenceCategories() : Array
      {
         return this.var_969;
      }
      
      public function get cfhPermission() : Boolean
      {
         return this.var_2039;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return this.var_2038;
      }
      
      public function get alertPermission() : Boolean
      {
         return this.var_2034;
      }
      
      public function get kickPermission() : Boolean
      {
         return this.var_2037;
      }
      
      public function get banPermission() : Boolean
      {
         return this.var_2036;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return this.var_2035;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return this.var_2040;
      }
   }
}
