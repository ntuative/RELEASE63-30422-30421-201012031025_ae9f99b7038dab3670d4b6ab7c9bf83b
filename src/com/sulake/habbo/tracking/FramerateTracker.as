package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class FramerateTracker
   {
       
      
      private var var_1449:int;
      
      private var var_2165:int;
      
      private var var_1005:int;
      
      private var var_425:Number;
      
      private var var_2167:Boolean;
      
      private var var_2166:int;
      
      private var var_1560:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2165 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2166 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2167 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1005;
         var _loc3_:int = getTimer();
         if(this.var_1005 == 1)
         {
            this.var_425 = param1;
            this.var_1449 = _loc3_;
         }
         else
         {
            _loc4_ = Number(this.var_1005);
            this.var_425 = this.var_425 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2167 && _loc3_ - this.var_1449 >= this.var_2165 && this.var_1560 < this.var_2166)
         {
            _loc5_ = 1000 / this.var_425;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1560;
            this.var_1449 = _loc3_;
            this.var_1005 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
