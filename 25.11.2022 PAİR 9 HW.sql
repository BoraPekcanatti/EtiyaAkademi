PGDMP         %            
    z            etiya-ecommerce    15.1    15.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24576    etiya-ecommerce    DATABASE     �   CREATE DATABASE "etiya-ecommerce" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1252';
 !   DROP DATABASE "etiya-ecommerce";
                postgres    false            �            1259    24611    adress    TABLE     �   CREATE TABLE public.adress (
    id integer NOT NULL,
    title character varying NOT NULL,
    country_id integer NOT NULL,
    door_number integer NOT NULL
);
    DROP TABLE public.adress;
       public         heap    postgres    false            �            1259    24610    adress_country_id_seq    SEQUENCE     �   ALTER TABLE public.adress ALTER COLUMN country_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.adress_country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    24609    adress_id_seq    SEQUENCE     �   ALTER TABLE public.adress ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.adress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    24751    basket    TABLE     V   CREATE TABLE public.basket (
    id integer NOT NULL,
    orderid integer NOT NULL
);
    DROP TABLE public.basket;
       public         heap    postgres    false            �            1259    24750    basket_id_seq    SEQUENCE     �   ALTER TABLE public.basket ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.basket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    241            �            1259    24747    basket_sellers    TABLE     f   CREATE TABLE public.basket_sellers (
    basketid integer NOT NULL,
    sellersid integer NOT NULL
);
 "   DROP TABLE public.basket_sellers;
       public         heap    postgres    false            �            1259    24778    brand    TABLE     \   CREATE TABLE public.brand (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.brand;
       public         heap    postgres    false            �            1259    24642    cargo    TABLE     �   CREATE TABLE public.cargo (
    id integer NOT NULL,
    shippers_id integer NOT NULL,
    price money NOT NULL,
    deliver_time time with time zone NOT NULL
);
    DROP TABLE public.cargo;
       public         heap    postgres    false            �            1259    24641    cargo_id_seq    SEQUENCE     �   ALTER TABLE public.cargo ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cargo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            �            1259    24696 
   categories    TABLE     �   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL,
    subcategoryid integer NOT NULL,
    special_categoryid integer NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    24695    categories_id_seq    SEQUENCE     �   ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    234            �            1259    24594    city    TABLE     z   CREATE TABLE public.city (
    id integer NOT NULL,
    name character varying NOT NULL,
    streetid integer NOT NULL
);
    DROP TABLE public.city;
       public         heap    postgres    false            �            1259    24593    city_id_seq    SEQUENCE     �   ALTER TABLE public.city ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    24771    colour    TABLE     ]   CREATE TABLE public.colour (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.colour;
       public         heap    postgres    false            �            1259    24770    colour_id_seq    SEQUENCE     �   ALTER TABLE public.colour ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.colour_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    247            �            1259    24586    country    TABLE     {   CREATE TABLE public.country (
    id integer NOT NULL,
    name character varying NOT NULL,
    cityid integer NOT NULL
);
    DROP TABLE public.country;
       public         heap    postgres    false            �            1259    24585    country_id_seq    SEQUENCE     �   ALTER TABLE public.country ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    24664    customer    TABLE     �   CREATE TABLE public.customer (
    id integer NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    email character varying NOT NULL,
    shipping_adressid integer NOT NULL,
    invoice_adressid integer NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    24663    customer_id_seq    SEQUENCE     �   ALTER TABLE public.customer ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    228                       1259    24832    discount_coupon    TABLE     �   CREATE TABLE public.discount_coupon (
    id integer NOT NULL,
    name character varying NOT NULL,
    ratio numeric NOT NULL
);
 #   DROP TABLE public.discount_coupon;
       public         heap    postgres    false                       1259    24831    discount_coupon_id_seq    SEQUENCE     �   ALTER TABLE public.discount_coupon ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.discount_coupon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    260            �            1259    24763    order    TABLE     �   CREATE TABLE public."order" (
    id integer NOT NULL,
    name character varying NOT NULL,
    cargoid integer NOT NULL,
    customerid integer NOT NULL,
    rating numeric NOT NULL,
    return_productsid integer NOT NULL
);
    DROP TABLE public."order";
       public         heap    postgres    false            �            1259    24762    order_id_seq    SEQUENCE     �   ALTER TABLE public."order" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    245            �            1259    24803    payment    TABLE     }   CREATE TABLE public.payment (
    id integer NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL
);
    DROP TABLE public.payment;
       public         heap    postgres    false            �            1259    24802    payment_id_seq    SEQUENCE     �   ALTER TABLE public.payment ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    253                       1259    24840    products    TABLE       CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    unit_price money NOT NULL,
    stock numeric NOT NULL,
    categoryid integer NOT NULL,
    paymentid integer NOT NULL,
    basketid integer NOT NULL,
    discount_couponid integer
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    24792    products_basket    TABLE     h   CREATE TABLE public.products_basket (
    productsid integer NOT NULL,
    basketid integer NOT NULL
);
 #   DROP TABLE public.products_basket;
       public         heap    postgres    false                       1259    24821    products_brand    TABLE     f   CREATE TABLE public.products_brand (
    productsid integer NOT NULL,
    brandid integer NOT NULL
);
 "   DROP TABLE public.products_brand;
       public         heap    postgres    false                        1259    24816    products_colour    TABLE     h   CREATE TABLE public.products_colour (
    productsid integer NOT NULL,
    colourid integer NOT NULL
);
 #   DROP TABLE public.products_colour;
       public         heap    postgres    false                       1259    24839    products_id_seq    SEQUENCE     �   ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    262            �            1259    24811    products_order    TABLE     �   CREATE TABLE public.products_order (
    orderid integer NOT NULL,
    productsid integer NOT NULL,
    total_price money NOT NULL,
    quantity integer NOT NULL,
    id integer NOT NULL
);
 "   DROP TABLE public.products_order;
       public         heap    postgres    false            �            1259    24810    products_order_id_seq    SEQUENCE     �   ALTER TABLE public.products_order ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    255            �            1259    24797    products_sellers    TABLE     j   CREATE TABLE public.products_sellers (
    productsid integer NOT NULL,
    sellersid integer NOT NULL
);
 $   DROP TABLE public.products_sellers;
       public         heap    postgres    false                       1259    24826    products_size    TABLE     d   CREATE TABLE public.products_size (
    productsid integer NOT NULL,
    sizeid integer NOT NULL
);
 !   DROP TABLE public.products_size;
       public         heap    postgres    false            �            1259    24715    refund    TABLE     �   CREATE TABLE public.refund (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL
);
    DROP TABLE public.refund;
       public         heap    postgres    false            �            1259    24714    refund_id_seq    SEQUENCE     �   ALTER TABLE public.refund ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.refund_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    236            �            1259    24757    return_products    TABLE     �   CREATE TABLE public.return_products (
    id integer NOT NULL,
    orderid integer NOT NULL,
    refundid integer NOT NULL,
    cargoid integer NOT NULL,
    products_orderid integer NOT NULL
);
 #   DROP TABLE public.return_products;
       public         heap    postgres    false            �            1259    24756    return_products_id_seq    SEQUENCE     �   ALTER TABLE public.return_products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.return_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    243            �            1259    24740    sellers    TABLE     �   CREATE TABLE public.sellers (
    id integer NOT NULL,
    name character varying NOT NULL,
    rating numeric NOT NULL,
    follower_count integer NOT NULL
);
    DROP TABLE public.sellers;
       public         heap    postgres    false            �            1259    24739    sellers_id_seq    SEQUENCE     �   ALTER TABLE public.sellers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sellers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    238            �            1259    24634    shippers    TABLE     _   CREATE TABLE public.shippers (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.shippers;
       public         heap    postgres    false            �            1259    24633    shippers_id_seq    SEQUENCE     �   ALTER TABLE public.shippers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.shippers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            �            1259    24785    size    TABLE     [   CREATE TABLE public.size (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.size;
       public         heap    postgres    false            �            1259    24688    special_category    TABLE     �   CREATE TABLE public.special_category (
    id integer NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL
);
 $   DROP TABLE public.special_category;
       public         heap    postgres    false            �            1259    24687    special_category_id_seq    SEQUENCE     �   ALTER TABLE public.special_category ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.special_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    232            �            1259    24602    street    TABLE     8   CREATE TABLE public.street (
    id integer NOT NULL
);
    DROP TABLE public.street;
       public         heap    postgres    false            �            1259    24601    street_id_seq    SEQUENCE     �   ALTER TABLE public.street ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.street_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    24680    subcategory    TABLE     �   CREATE TABLE public.subcategory (
    id integer NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL
);
    DROP TABLE public.subcategory;
       public         heap    postgres    false            �            1259    24679    subcategory_id_seq    SEQUENCE     �   ALTER TABLE public.subcategory ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.subcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    230            �          0    24611    adress 
   TABLE DATA                 public          postgres    false    222   �       �          0    24751    basket 
   TABLE DATA                 public          postgres    false    241   �       �          0    24747    basket_sellers 
   TABLE DATA                 public          postgres    false    239   %�       �          0    24778    brand 
   TABLE DATA                 public          postgres    false    248   ?�       �          0    24642    cargo 
   TABLE DATA                 public          postgres    false    226   Y�       �          0    24696 
   categories 
   TABLE DATA                 public          postgres    false    234   s�       �          0    24594    city 
   TABLE DATA                 public          postgres    false    217   ��       �          0    24771    colour 
   TABLE DATA                 public          postgres    false    247   ��       �          0    24586    country 
   TABLE DATA                 public          postgres    false    215   ��       �          0    24664    customer 
   TABLE DATA                 public          postgres    false    228   ۵       �          0    24832    discount_coupon 
   TABLE DATA                 public          postgres    false    260   ��       �          0    24763    order 
   TABLE DATA                 public          postgres    false    245   �       �          0    24803    payment 
   TABLE DATA                 public          postgres    false    253   )�       �          0    24840    products 
   TABLE DATA                 public          postgres    false    262   C�       �          0    24792    products_basket 
   TABLE DATA                 public          postgres    false    250   ]�       �          0    24821    products_brand 
   TABLE DATA                 public          postgres    false    257   w�       �          0    24816    products_colour 
   TABLE DATA                 public          postgres    false    256   ��       �          0    24811    products_order 
   TABLE DATA                 public          postgres    false    255   ��       �          0    24797    products_sellers 
   TABLE DATA                 public          postgres    false    251   Ŷ       �          0    24826    products_size 
   TABLE DATA                 public          postgres    false    258   ߶       �          0    24715    refund 
   TABLE DATA                 public          postgres    false    236   ��       �          0    24757    return_products 
   TABLE DATA                 public          postgres    false    243   �       �          0    24740    sellers 
   TABLE DATA                 public          postgres    false    238   -�       �          0    24634    shippers 
   TABLE DATA                 public          postgres    false    224   G�       �          0    24785    size 
   TABLE DATA                 public          postgres    false    249   a�       �          0    24688    special_category 
   TABLE DATA                 public          postgres    false    232   {�       �          0    24602    street 
   TABLE DATA                 public          postgres    false    219   ��       �          0    24680    subcategory 
   TABLE DATA                 public          postgres    false    230   ��                  0    0    adress_country_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.adress_country_id_seq', 1, false);
          public          postgres    false    221                       0    0    adress_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.adress_id_seq', 1, false);
          public          postgres    false    220                       0    0    basket_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.basket_id_seq', 1, false);
          public          postgres    false    240                       0    0    cargo_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cargo_id_seq', 1, false);
          public          postgres    false    225                       0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    233                       0    0    city_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.city_id_seq', 1, false);
          public          postgres    false    216            	           0    0    colour_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.colour_id_seq', 1, false);
          public          postgres    false    246            
           0    0    country_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.country_id_seq', 1, false);
          public          postgres    false    214                       0    0    customer_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customer_id_seq', 1, false);
          public          postgres    false    227                       0    0    discount_coupon_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.discount_coupon_id_seq', 1, false);
          public          postgres    false    259                       0    0    order_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.order_id_seq', 1, false);
          public          postgres    false    244                       0    0    payment_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.payment_id_seq', 1, false);
          public          postgres    false    252                       0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 1, false);
          public          postgres    false    261                       0    0    products_order_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.products_order_id_seq', 1, false);
          public          postgres    false    254                       0    0    refund_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.refund_id_seq', 1, false);
          public          postgres    false    235                       0    0    return_products_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.return_products_id_seq', 1, false);
          public          postgres    false    242                       0    0    sellers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.sellers_id_seq', 1, false);
          public          postgres    false    237                       0    0    shippers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.shippers_id_seq', 1, false);
          public          postgres    false    223                       0    0    special_category_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.special_category_id_seq', 1, false);
          public          postgres    false    231                       0    0    street_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.street_id_seq', 1, false);
          public          postgres    false    218                       0    0    subcategory_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.subcategory_id_seq', 1, false);
          public          postgres    false    229            �           2606    24617    adress adress_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.adress
    ADD CONSTRAINT adress_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.adress DROP CONSTRAINT adress_pkey;
       public            postgres    false    222                        2606    24755    basket basket_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.basket
    ADD CONSTRAINT basket_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.basket DROP CONSTRAINT basket_pkey;
       public            postgres    false    241            �           2606    24943 "   basket_sellers basket_sellers_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.basket_sellers
    ADD CONSTRAINT basket_sellers_pkey PRIMARY KEY (basketid, sellersid);
 L   ALTER TABLE ONLY public.basket_sellers DROP CONSTRAINT basket_sellers_pkey;
       public            postgres    false    239    239                       2606    24784    brand brand_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.brand DROP CONSTRAINT brand_pkey;
       public            postgres    false    248            �           2606    24646    cargo cargo_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT cargo_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.cargo DROP CONSTRAINT cargo_pkey;
       public            postgres    false    226            �           2606    24702    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    234            �           2606    24600    city city_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    217                       2606    24777    colour colour_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.colour
    ADD CONSTRAINT colour_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.colour DROP CONSTRAINT colour_pkey;
       public            postgres    false    247            �           2606    24592    country country_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    215            �           2606    24738    customer customer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    228                       2606    24838 $   discount_coupon discount_coupon_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.discount_coupon
    ADD CONSTRAINT discount_coupon_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.discount_coupon DROP CONSTRAINT discount_coupon_pkey;
       public            postgres    false    260                       2606    24769    order order_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."order" DROP CONSTRAINT order_pkey;
       public            postgres    false    245                       2606    24809    payment payment_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    253                       2606    24796 #   products_basket product_basket_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.products_basket
    ADD CONSTRAINT product_basket_pkey PRIMARY KEY (productsid, basketid);
 M   ALTER TABLE ONLY public.products_basket DROP CONSTRAINT product_basket_pkey;
       public            postgres    false    250    250                       2606    24825 "   products_brand products_brand_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.products_brand
    ADD CONSTRAINT products_brand_pkey PRIMARY KEY (productsid, brandid);
 L   ALTER TABLE ONLY public.products_brand DROP CONSTRAINT products_brand_pkey;
       public            postgres    false    257    257                       2606    24820 $   products_colour products_colour_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.products_colour
    ADD CONSTRAINT products_colour_pkey PRIMARY KEY (productsid, colourid);
 N   ALTER TABLE ONLY public.products_colour DROP CONSTRAINT products_colour_pkey;
       public            postgres    false    256    256                       2606    24815 "   products_order products_order_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.products_order
    ADD CONSTRAINT products_order_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.products_order DROP CONSTRAINT products_order_pkey;
       public            postgres    false    255                       2606    24846    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    262                       2606    24801 &   products_sellers products_sellers_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.products_sellers
    ADD CONSTRAINT products_sellers_pkey PRIMARY KEY (productsid, sellersid);
 P   ALTER TABLE ONLY public.products_sellers DROP CONSTRAINT products_sellers_pkey;
       public            postgres    false    251    251                       2606    24830     products_size products_size_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.products_size
    ADD CONSTRAINT products_size_pkey PRIMARY KEY (productsid, sizeid);
 J   ALTER TABLE ONLY public.products_size DROP CONSTRAINT products_size_pkey;
       public            postgres    false    258    258            �           2606    24721    refund refund_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.refund
    ADD CONSTRAINT refund_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.refund DROP CONSTRAINT refund_pkey;
       public            postgres    false    236                       2606    24761 $   return_products return_products_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.return_products
    ADD CONSTRAINT return_products_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.return_products DROP CONSTRAINT return_products_pkey;
       public            postgres    false    243            �           2606    24746    sellers sellers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.sellers DROP CONSTRAINT sellers_pkey;
       public            postgres    false    238            �           2606    24640    shippers shippers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.shippers
    ADD CONSTRAINT shippers_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.shippers DROP CONSTRAINT shippers_pkey;
       public            postgres    false    224            
           2606    24791    size size_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.size
    ADD CONSTRAINT size_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.size DROP CONSTRAINT size_pkey;
       public            postgres    false    249            �           2606    24694 &   special_category special_category_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.special_category
    ADD CONSTRAINT special_category_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.special_category DROP CONSTRAINT special_category_pkey;
       public            postgres    false    232            �           2606    24608    street street_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.street
    ADD CONSTRAINT street_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.street DROP CONSTRAINT street_pkey;
       public            postgres    false    219            �           2606    24686    subcategory subcategory_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.subcategory
    ADD CONSTRAINT subcategory_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.subcategory DROP CONSTRAINT subcategory_pkey;
       public            postgres    false    230            !           2606    24674    customer adress_invoice_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT adress_invoice_fk FOREIGN KEY (invoice_adressid) REFERENCES public.adress(id);
 D   ALTER TABLE ONLY public.customer DROP CONSTRAINT adress_invoice_fk;
       public          postgres    false    228    3308    222            "           2606    24669    customer adress_shipping_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT adress_shipping_fk FOREIGN KEY (shipping_adressid) REFERENCES public.adress(id);
 E   ALTER TABLE ONLY public.customer DROP CONSTRAINT adress_shipping_fk;
       public          postgres    false    3308    222    228            /           2606    24867    products_basket basketid_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.products_basket
    ADD CONSTRAINT basketid_fk FOREIGN KEY (basketid) REFERENCES public.basket(id);
 E   ALTER TABLE ONLY public.products_basket DROP CONSTRAINT basketid_fk;
       public          postgres    false    241    3328    250            %           2606    24944    basket_sellers basketid_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public.basket_sellers
    ADD CONSTRAINT basketid_fk FOREIGN KEY (basketid) REFERENCES public.basket(id);
 D   ALTER TABLE ONLY public.basket_sellers DROP CONSTRAINT basketid_fk;
       public          postgres    false    3328    241    239            7           2606    24907    products_brand brandid_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.products_brand
    ADD CONSTRAINT brandid_fk FOREIGN KEY (brandid) REFERENCES public.brand(id);
 C   ALTER TABLE ONLY public.products_brand DROP CONSTRAINT brandid_fk;
       public          postgres    false    257    3336    248            ,           2606    24927    order cargoid_fk    FK CONSTRAINT     q   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT cargoid_fk FOREIGN KEY (cargoid) REFERENCES public.cargo(id);
 <   ALTER TABLE ONLY public."order" DROP CONSTRAINT cargoid_fk;
       public          postgres    false    245    3312    226            (           2606    24964    return_products cargoid_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.return_products
    ADD CONSTRAINT cargoid_fk FOREIGN KEY (cargoid) REFERENCES public.cargo(id);
 D   ALTER TABLE ONLY public.return_products DROP CONSTRAINT cargoid_fk;
       public          postgres    false    3312    226    243            ;           2606    24847    products categoryid_fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.products
    ADD CONSTRAINT categoryid_fk FOREIGN KEY (categoryid) REFERENCES public.categories(id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT categoryid_fk;
       public          postgres    false    3320    262    234                       2606    24979    country cityid_fk    FK CONSTRAINT     j   ALTER TABLE ONLY public.country
    ADD CONSTRAINT cityid_fk FOREIGN KEY (id) REFERENCES public.city(id);
 ;   ALTER TABLE ONLY public.country DROP CONSTRAINT cityid_fk;
       public          postgres    false    3304    215    217            5           2606    24897    products_colour colourid_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.products_colour
    ADD CONSTRAINT colourid_fk FOREIGN KEY (colourid) REFERENCES public.colour(id);
 E   ALTER TABLE ONLY public.products_colour DROP CONSTRAINT colourid_fk;
       public          postgres    false    256    247    3334                       2606    24984    adress countryid_fk    FK CONSTRAINT     o   ALTER TABLE ONLY public.adress
    ADD CONSTRAINT countryid_fk FOREIGN KEY (id) REFERENCES public.country(id);
 =   ALTER TABLE ONLY public.adress DROP CONSTRAINT countryid_fk;
       public          postgres    false    3302    215    222            -           2606    24932    order customerid_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT customerid_fk FOREIGN KEY (customerid) REFERENCES public.customer(id);
 ?   ALTER TABLE ONLY public."order" DROP CONSTRAINT customerid_fk;
       public          postgres    false    3314    245    228            <           2606    24857    products discount_couponid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT discount_couponid_fk FOREIGN KEY (discount_couponid) REFERENCES public.discount_coupon(id);
 G   ALTER TABLE ONLY public.products DROP CONSTRAINT discount_couponid_fk;
       public          postgres    false    262    260    3354            3           2606    24882    products_order orderid_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.products_order
    ADD CONSTRAINT orderid_fk FOREIGN KEY (orderid) REFERENCES public."order"(id);
 C   ALTER TABLE ONLY public.products_order DROP CONSTRAINT orderid_fk;
       public          postgres    false    245    255    3332            '           2606    24922    basket orderid_fk    FK CONSTRAINT     r   ALTER TABLE ONLY public.basket
    ADD CONSTRAINT orderid_fk FOREIGN KEY (orderid) REFERENCES public."order"(id);
 ;   ALTER TABLE ONLY public.basket DROP CONSTRAINT orderid_fk;
       public          postgres    false    3332    241    245            )           2606    24954    return_products orderid_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public.return_products
    ADD CONSTRAINT orderid_fk FOREIGN KEY (orderid) REFERENCES public."order"(id);
 D   ALTER TABLE ONLY public.return_products DROP CONSTRAINT orderid_fk;
       public          postgres    false    245    3332    243            =           2606    24852    products paymentid_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.products
    ADD CONSTRAINT paymentid_fk FOREIGN KEY (paymentid) REFERENCES public.payment(id);
 ?   ALTER TABLE ONLY public.products DROP CONSTRAINT paymentid_fk;
       public          postgres    false    3344    262    253            *           2606    24969 #   return_products products_orderid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_products
    ADD CONSTRAINT products_orderid_fk FOREIGN KEY (id) REFERENCES public.products_order(id);
 M   ALTER TABLE ONLY public.return_products DROP CONSTRAINT products_orderid_fk;
       public          postgres    false    243    255    3346            0           2606    24862    products_basket productsid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_basket
    ADD CONSTRAINT productsid_fk FOREIGN KEY (productsid) REFERENCES public.products(id);
 G   ALTER TABLE ONLY public.products_basket DROP CONSTRAINT productsid_fk;
       public          postgres    false    250    262    3356            1           2606    24872    products_sellers productsid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_sellers
    ADD CONSTRAINT productsid_fk FOREIGN KEY (productsid) REFERENCES public.products(id);
 H   ALTER TABLE ONLY public.products_sellers DROP CONSTRAINT productsid_fk;
       public          postgres    false    262    3356    251            4           2606    24887    products_order productsid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_order
    ADD CONSTRAINT productsid_fk FOREIGN KEY (productsid) REFERENCES public.products(id);
 F   ALTER TABLE ONLY public.products_order DROP CONSTRAINT productsid_fk;
       public          postgres    false    255    3356    262            6           2606    24892    products_colour productsid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_colour
    ADD CONSTRAINT productsid_fk FOREIGN KEY (productsid) REFERENCES public.products(id);
 G   ALTER TABLE ONLY public.products_colour DROP CONSTRAINT productsid_fk;
       public          postgres    false    3356    256    262            8           2606    24902    products_brand productsid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_brand
    ADD CONSTRAINT productsid_fk FOREIGN KEY (productsid) REFERENCES public.products(id);
 F   ALTER TABLE ONLY public.products_brand DROP CONSTRAINT productsid_fk;
       public          postgres    false    257    3356    262            9           2606    24912    products_size productsid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_size
    ADD CONSTRAINT productsid_fk FOREIGN KEY (productsid) REFERENCES public.products(id);
 E   ALTER TABLE ONLY public.products_size DROP CONSTRAINT productsid_fk;
       public          postgres    false    3356    258    262            +           2606    24959    return_products refundid_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.return_products
    ADD CONSTRAINT refundid_fk FOREIGN KEY (refundid) REFERENCES public.refund(id);
 E   ALTER TABLE ONLY public.return_products DROP CONSTRAINT refundid_fk;
       public          postgres    false    243    3322    236            .           2606    24937    order return_productsid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT return_productsid_fk FOREIGN KEY (return_productsid) REFERENCES public.return_products(id);
 F   ALTER TABLE ONLY public."order" DROP CONSTRAINT return_productsid_fk;
       public          postgres    false    245    3330    243            2           2606    24877    products_sellers sellersid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_sellers
    ADD CONSTRAINT sellersid_fk FOREIGN KEY (sellersid) REFERENCES public.sellers(id);
 G   ALTER TABLE ONLY public.products_sellers DROP CONSTRAINT sellersid_fk;
       public          postgres    false    3324    251    238            &           2606    24949    basket_sellers sellersid_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.basket_sellers
    ADD CONSTRAINT sellersid_fk FOREIGN KEY (sellersid) REFERENCES public.sellers(id);
 E   ALTER TABLE ONLY public.basket_sellers DROP CONSTRAINT sellersid_fk;
       public          postgres    false    3324    239    238                        2606    24990    cargo shippersid_fk    FK CONSTRAINT     p   ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT shippersid_fk FOREIGN KEY (id) REFERENCES public.shippers(id);
 =   ALTER TABLE ONLY public.cargo DROP CONSTRAINT shippersid_fk;
       public          postgres    false    224    3310    226            :           2606    24917    products_size sizeid_fk    FK CONSTRAINT     t   ALTER TABLE ONLY public.products_size
    ADD CONSTRAINT sizeid_fk FOREIGN KEY (sizeid) REFERENCES public.size(id);
 A   ALTER TABLE ONLY public.products_size DROP CONSTRAINT sizeid_fk;
       public          postgres    false    3338    258    249            #           2606    24732    categories special_category_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT special_category_fk FOREIGN KEY (special_categoryid) REFERENCES public.special_category(id);
 H   ALTER TABLE ONLY public.categories DROP CONSTRAINT special_category_fk;
       public          postgres    false    234    232    3318                       2606    24974    city streetid_fk    FK CONSTRAINT     k   ALTER TABLE ONLY public.city
    ADD CONSTRAINT streetid_fk FOREIGN KEY (id) REFERENCES public.street(id);
 :   ALTER TABLE ONLY public.city DROP CONSTRAINT streetid_fk;
       public          postgres    false    217    3306    219            $           2606    24727    categories subcategory_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT subcategory_fk FOREIGN KEY (subcategoryid) REFERENCES public.subcategory(id);
 C   ALTER TABLE ONLY public.categories DROP CONSTRAINT subcategory_fk;
       public          postgres    false    3316    234    230            �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���         