package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_493:int = 0;
      
      public static const const_182:int = 1;
      
      public static const const_109:int = 2;
      
      public static const const_776:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1444:String;
      
      private var var_1913:int;
      
      private var var_1282:int;
      
      private var var_2400:int;
      
      private var var_2401:int;
      
      private var var_754:Array;
      
      private var var_2399:Array;
      
      private var var_2405:int;
      
      private var var_1915:Boolean;
      
      private var var_2402:Boolean;
      
      private var var_2404:Boolean;
      
      private var var_2403:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_1915;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_1915 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2402;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2402 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2404;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2404 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2403;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2403 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1444;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1444 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_1913;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_1913 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1282;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1282 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2400;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2400 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2401;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2401 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_754;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_754 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2399;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2399 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2405;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2405 = param1;
      }
   }
}
