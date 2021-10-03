package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1476:String = "pricing_model_unknown";
      
      public static const const_400:String = "pricing_model_single";
      
      public static const const_404:String = "pricing_model_multi";
      
      public static const const_393:String = "pricing_model_bundle";
      
      public static const const_959:String = "price_type_none";
      
      public static const const_512:String = "price_type_credits";
      
      public static const const_766:String = "price_type_activitypoints";
      
      public static const const_786:String = "price_type_credits_and_activitypoints";
       
      
      private var var_695:String;
      
      private var var_1072:String;
      
      private var _offerId:int;
      
      private var var_1657:String;
      
      private var var_1073:int;
      
      private var var_1071:int;
      
      private var var_1421:int;
      
      private var var_358:ICatalogPage;
      
      private var var_696:IProductContainer;
      
      private var var_2316:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1657 = param1.localizationId;
         this.var_1073 = param1.priceInCredits;
         this.var_1071 = param1.priceInActivityPoints;
         this.var_1421 = param1.activityPointType;
         this.var_358 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_358;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1657;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1073;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1071;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1421;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_696;
      }
      
      public function get pricingModel() : String
      {
         return this.var_695;
      }
      
      public function get priceType() : String
      {
         return this.var_1072;
      }
      
      public function get method_1() : int
      {
         return this.var_2316;
      }
      
      public function set method_1(param1:int) : void
      {
         this.var_2316 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1657 = "";
         this.var_1073 = 0;
         this.var_1071 = 0;
         this.var_1421 = 0;
         this.var_358 = null;
         if(this.var_696 != null)
         {
            this.var_696.dispose();
            this.var_696 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_695)
         {
            case const_400:
               this.var_696 = new SingleProductContainer(this,param1);
               break;
            case const_404:
               this.var_696 = new MultiProductContainer(this,param1);
               break;
            case const_393:
               this.var_696 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_695);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_695 = const_400;
            }
            else
            {
               this.var_695 = const_404;
            }
         }
         else if(param1.length > 1)
         {
            this.var_695 = const_393;
         }
         else
         {
            this.var_695 = const_1476;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1073 > 0 && this.var_1071 > 0)
         {
            this.var_1072 = const_786;
         }
         else if(this.var_1073 > 0)
         {
            this.var_1072 = const_512;
         }
         else if(this.var_1071 > 0)
         {
            this.var_1072 = const_766;
         }
         else
         {
            this.var_1072 = const_959;
         }
      }
   }
}
