PGDMP             
            z           shop    14.3    14.3 &               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16760    shop    DATABASE     h   CREATE DATABASE shop WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE shop;
                postgres    false            ?            1259    16793 
   tbl_basket    TABLE     h   CREATE TABLE public.tbl_basket (
    id integer NOT NULL,
    date timestamp with time zone NOT NULL
);
    DROP TABLE public.tbl_basket;
       public         heap    postgres    false            ?            1259    16792    tbl_basket_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_basket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tbl_basket_id_seq;
       public          postgres    false    214                       0    0    tbl_basket_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tbl_basket_id_seq OWNED BY public.tbl_basket.id;
          public          postgres    false    213            ?            1259    16762    tbl_category    TABLE     ?   CREATE TABLE public.tbl_category (
    id integer NOT NULL,
    title character varying NOT NULL,
    deleted boolean DEFAULT false NOT NULL
);
     DROP TABLE public.tbl_category;
       public         heap    postgres    false            ?            1259    16761    tbl_category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbl_category_id_seq;
       public          postgres    false    210                       0    0    tbl_category_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tbl_category_id_seq OWNED BY public.tbl_category.id;
          public          postgres    false    209            ?            1259    16802    tbl_listofbasket    TABLE     ?   CREATE TABLE public.tbl_listofbasket (
    id integer NOT NULL,
    basket_id bigint NOT NULL,
    product_id bigint NOT NULL,
    product_price double precision NOT NULL
);
 $   DROP TABLE public.tbl_listofbasket;
       public         heap    postgres    false            ?            1259    16801    tbl_listofbasket_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_listofbasket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbl_listofbasket_id_seq;
       public          postgres    false    216                       0    0    tbl_listofbasket_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbl_listofbasket_id_seq OWNED BY public.tbl_listofbasket.id;
          public          postgres    false    215            ?            1259    16772    tbl_product    TABLE     ?   CREATE TABLE public.tbl_product (
    id integer NOT NULL,
    title character varying NOT NULL,
    price double precision NOT NULL,
    category_id bigint NOT NULL
);
    DROP TABLE public.tbl_product;
       public         heap    postgres    false            ?            1259    16771    tbl_product_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tbl_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbl_product_id_seq;
       public          postgres    false    212                       0    0    tbl_product_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tbl_product_id_seq OWNED BY public.tbl_product.id;
          public          postgres    false    211            n           2604    16796    tbl_basket id    DEFAULT     n   ALTER TABLE ONLY public.tbl_basket ALTER COLUMN id SET DEFAULT nextval('public.tbl_basket_id_seq'::regclass);
 <   ALTER TABLE public.tbl_basket ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            k           2604    16765    tbl_category id    DEFAULT     r   ALTER TABLE ONLY public.tbl_category ALTER COLUMN id SET DEFAULT nextval('public.tbl_category_id_seq'::regclass);
 >   ALTER TABLE public.tbl_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            o           2604    16805    tbl_listofbasket id    DEFAULT     z   ALTER TABLE ONLY public.tbl_listofbasket ALTER COLUMN id SET DEFAULT nextval('public.tbl_listofbasket_id_seq'::regclass);
 B   ALTER TABLE public.tbl_listofbasket ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            m           2604    16775    tbl_product id    DEFAULT     p   ALTER TABLE ONLY public.tbl_product ALTER COLUMN id SET DEFAULT nextval('public.tbl_product_id_seq'::regclass);
 =   ALTER TABLE public.tbl_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212                      0    16793 
   tbl_basket 
   TABLE DATA           .   COPY public.tbl_basket (id, date) FROM stdin;
    public          postgres    false    214   ?)       
          0    16762    tbl_category 
   TABLE DATA           :   COPY public.tbl_category (id, title, deleted) FROM stdin;
    public          postgres    false    210   ?)                 0    16802    tbl_listofbasket 
   TABLE DATA           T   COPY public.tbl_listofbasket (id, basket_id, product_id, product_price) FROM stdin;
    public          postgres    false    216   ?)                 0    16772    tbl_product 
   TABLE DATA           D   COPY public.tbl_product (id, title, price, category_id) FROM stdin;
    public          postgres    false    212   ;*                  0    0    tbl_basket_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tbl_basket_id_seq', 35, true);
          public          postgres    false    213                       0    0    tbl_category_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tbl_category_id_seq', 31, true);
          public          postgres    false    209                       0    0    tbl_listofbasket_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tbl_listofbasket_id_seq', 83, true);
          public          postgres    false    215                       0    0    tbl_product_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tbl_product_id_seq', 61, true);
          public          postgres    false    211            v           2606    16800    tbl_basket tbl_basket_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tbl_basket
    ADD CONSTRAINT tbl_basket_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tbl_basket DROP CONSTRAINT tbl_basket_pkey;
       public            postgres    false    214            q           2606    16769    tbl_category tbl_category_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbl_category
    ADD CONSTRAINT tbl_category_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tbl_category DROP CONSTRAINT tbl_category_pkey;
       public            postgres    false    210            z           2606    16807 &   tbl_listofbasket tbl_listofbasket_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tbl_listofbasket
    ADD CONSTRAINT tbl_listofbasket_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tbl_listofbasket DROP CONSTRAINT tbl_listofbasket_pkey;
       public            postgres    false    216            t           2606    16779    tbl_product tbl_product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbl_product
    ADD CONSTRAINT tbl_product_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tbl_product DROP CONSTRAINT tbl_product_pkey;
       public            postgres    false    212            w           1259    17109    fki_fk_basket    INDEX     O   CREATE INDEX fki_fk_basket ON public.tbl_listofbasket USING btree (basket_id);
 !   DROP INDEX public.fki_fk_basket;
       public            postgres    false    216            r           1259    17103    fki_fk_category    INDEX     N   CREATE INDEX fki_fk_category ON public.tbl_product USING btree (category_id);
 #   DROP INDEX public.fki_fk_category;
       public            postgres    false    212            x           1259    17115    fki_fk_product    INDEX     Q   CREATE INDEX fki_fk_product ON public.tbl_listofbasket USING btree (product_id);
 "   DROP INDEX public.fki_fk_product;
       public            postgres    false    216            |           2606    17104    tbl_listofbasket fk_basket    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_listofbasket
    ADD CONSTRAINT fk_basket FOREIGN KEY (basket_id) REFERENCES public.tbl_basket(id) NOT VALID;
 D   ALTER TABLE ONLY public.tbl_listofbasket DROP CONSTRAINT fk_basket;
       public          postgres    false    3190    214    216            {           2606    17098    tbl_product fk_category    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_product
    ADD CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES public.tbl_category(id) NOT VALID;
 A   ALTER TABLE ONLY public.tbl_product DROP CONSTRAINT fk_category;
       public          postgres    false    3185    212    210            }           2606    17110    tbl_listofbasket fk_product    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tbl_listofbasket
    ADD CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES public.tbl_product(id) NOT VALID;
 E   ALTER TABLE ONLY public.tbl_listofbasket DROP CONSTRAINT fk_product;
       public          postgres    false    212    216    3188               3   x?36?4202?50"#+#+CS=Cccm+c.cS
,?
b???? ?~?      
      x?36???O??I?L?????? '??         2   x?3??46?43?442?3??0 s9??,9?M?#d?1'F??? ??
?         '   x?33?t47?442?3?46?23?9?@?=... f?d     