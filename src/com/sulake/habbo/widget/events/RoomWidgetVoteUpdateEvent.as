package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_130:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_121:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_997:String;
      
      private var var_1176:Array;
      
      private var var_1059:Array;
      
      private var var_1438:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_997 = param2;
         this.var_1176 = param3;
         this.var_1059 = param4;
         if(this.var_1059 == null)
         {
            this.var_1059 = [];
         }
         this.var_1438 = param5;
      }
      
      public function get question() : String
      {
         return this.var_997;
      }
      
      public function get choices() : Array
      {
         return this.var_1176.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1059.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1438;
      }
   }
}
