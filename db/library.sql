PGDMP                          z            library    14.2    14.2 7    6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            7           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            8           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            9           1262    18043    library    DATABASE     R   CREATE DATABASE library WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE library;
                postgres    false            ?            1259    18045    author    TABLE     ?   CREATE TABLE public.author (
    id integer NOT NULL,
    name character varying(100),
    public_id character varying NOT NULL
);
    DROP TABLE public.author;
       public         heap    postgres    false            ?            1259    18093    author_book    TABLE     b   CREATE TABLE public.author_book (
    book_id integer NOT NULL,
    author_id integer NOT NULL
);
    DROP TABLE public.author_book;
       public         heap    postgres    false            ?            1259    18044    author_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.author_id_seq;
       public          postgres    false    210            :           0    0    author_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.author_id_seq OWNED BY public.author.id;
          public          postgres    false    209            ?            1259    18079    book    TABLE     ?   CREATE TABLE public.book (
    id integer NOT NULL,
    title text,
    "desc" text,
    public_id character varying NOT NULL,
    category_id integer NOT NULL,
    quantity integer NOT NULL
);
    DROP TABLE public.book;
       public         heap    postgres    false            ?            1259    18078    book_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.book_id_seq;
       public          postgres    false    216            ;           0    0    book_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.book_id_seq OWNED BY public.book.id;
          public          postgres    false    215            ?            1259    18055    category    TABLE     ?   CREATE TABLE public.category (
    id integer NOT NULL,
    genre character varying(100),
    "desc" text,
    public_id character varying NOT NULL
);
    DROP TABLE public.category;
       public         heap    postgres    false            ?            1259    18054    category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    212            <           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    211            ?            1259    18109    rent    TABLE     ?   CREATE TABLE public.rent (
    id integer NOT NULL,
    date_rent date NOT NULL,
    date_return date,
    book_id integer NOT NULL,
    user_id integer NOT NULL,
    admin_id integer NOT NULL,
    public_id character varying NOT NULL
);
    DROP TABLE public.rent;
       public         heap    postgres    false            ?            1259    18108    rent_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.rent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.rent_id_seq;
       public          postgres    false    219            =           0    0    rent_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.rent_id_seq OWNED BY public.rent.id;
          public          postgres    false    218            ?            1259    18065    user    TABLE     ?   CREATE TABLE public."user" (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    username character varying(10) NOT NULL,
    password character varying(10) NOT NULL,
    public_id character varying NOT NULL,
    is_admin boolean
);
    DROP TABLE public."user";
       public         heap    postgres    false            ?            1259    18064    user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    214            >           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          postgres    false    213            ~           2604    18048 	   author id    DEFAULT     f   ALTER TABLE ONLY public.author ALTER COLUMN id SET DEFAULT nextval('public.author_id_seq'::regclass);
 8   ALTER TABLE public.author ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            ?           2604    18082    book id    DEFAULT     b   ALTER TABLE ONLY public.book ALTER COLUMN id SET DEFAULT nextval('public.book_id_seq'::regclass);
 6   ALTER TABLE public.book ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216                       2604    18058    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            ?           2604    18112    rent id    DEFAULT     b   ALTER TABLE ONLY public.rent ALTER COLUMN id SET DEFAULT nextval('public.rent_id_seq'::regclass);
 6   ALTER TABLE public.rent ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            ?           2604    18068    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            *          0    18045    author 
   TABLE DATA           5   COPY public.author (id, name, public_id) FROM stdin;
    public          postgres    false    210   ?:       1          0    18093    author_book 
   TABLE DATA           9   COPY public.author_book (book_id, author_id) FROM stdin;
    public          postgres    false    217   ?;       0          0    18079    book 
   TABLE DATA           S   COPY public.book (id, title, "desc", public_id, category_id, quantity) FROM stdin;
    public          postgres    false    216   ?;       ,          0    18055    category 
   TABLE DATA           @   COPY public.category (id, genre, "desc", public_id) FROM stdin;
    public          postgres    false    212   ?<       3          0    18109    rent 
   TABLE DATA           a   COPY public.rent (id, date_rent, date_return, book_id, user_id, admin_id, public_id) FROM stdin;
    public          postgres    false    219   ?=       .          0    18065    user 
   TABLE DATA           S   COPY public."user" (id, name, username, password, public_id, is_admin) FROM stdin;
    public          postgres    false    214   f>       ?           0    0    author_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.author_id_seq', 54, true);
          public          postgres    false    209            @           0    0    book_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.book_id_seq', 34, true);
          public          postgres    false    215            A           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    211            B           0    0    rent_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.rent_id_seq', 28, true);
          public          postgres    false    218            C           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 4, true);
          public          postgres    false    213            ?           2606    18097    author_book author_book_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.author_book
    ADD CONSTRAINT author_book_pkey PRIMARY KEY (book_id, author_id);
 F   ALTER TABLE ONLY public.author_book DROP CONSTRAINT author_book_pkey;
       public            postgres    false    217    217            ?           2606    18052    author author_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.author DROP CONSTRAINT author_pkey;
       public            postgres    false    210            ?           2606    18086    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    216            ?           2606    18062    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    212            ?           2606    18114    rent rent_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.rent
    ADD CONSTRAINT rent_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.rent DROP CONSTRAINT rent_pkey;
       public            postgres    false    219            ?           2606    18076    user user_password_key 
   CONSTRAINT     W   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_password_key UNIQUE (password);
 B   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_password_key;
       public            postgres    false    214            ?           2606    18072    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    214            ?           2606    18074    user user_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_username_key;
       public            postgres    false    214            ?           1259    18053    ix_author_id    INDEX     =   CREATE INDEX ix_author_id ON public.author USING btree (id);
     DROP INDEX public.ix_author_id;
       public            postgres    false    210            ?           1259    18092 
   ix_book_id    INDEX     9   CREATE INDEX ix_book_id ON public.book USING btree (id);
    DROP INDEX public.ix_book_id;
       public            postgres    false    216            ?           1259    18063    ix_category_id    INDEX     A   CREATE INDEX ix_category_id ON public.category USING btree (id);
 "   DROP INDEX public.ix_category_id;
       public            postgres    false    212            ?           1259    18130 
   ix_rent_id    INDEX     9   CREATE INDEX ix_rent_id ON public.rent USING btree (id);
    DROP INDEX public.ix_rent_id;
       public            postgres    false    219            ?           1259    18077 
   ix_user_id    INDEX     ;   CREATE INDEX ix_user_id ON public."user" USING btree (id);
    DROP INDEX public.ix_user_id;
       public            postgres    false    214            ?           2606    18103 &   author_book author_book_author_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.author_book
    ADD CONSTRAINT author_book_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.author(id);
 P   ALTER TABLE ONLY public.author_book DROP CONSTRAINT author_book_author_id_fkey;
       public          postgres    false    210    217    3460            ?           2606    18098 $   author_book author_book_book_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.author_book
    ADD CONSTRAINT author_book_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book(id);
 N   ALTER TABLE ONLY public.author_book DROP CONSTRAINT author_book_book_id_fkey;
       public          postgres    false    217    216    3473            ?           2606    18087    book book_category_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(id);
 D   ALTER TABLE ONLY public.book DROP CONSTRAINT book_category_id_fkey;
       public          postgres    false    212    216    3463            ?           2606    18125    rent rent_admin_id_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.rent
    ADD CONSTRAINT rent_admin_id_fkey FOREIGN KEY (admin_id) REFERENCES public."user"(id);
 A   ALTER TABLE ONLY public.rent DROP CONSTRAINT rent_admin_id_fkey;
       public          postgres    false    214    3469    219            ?           2606    18115    rent rent_book_id_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY public.rent
    ADD CONSTRAINT rent_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book(id);
 @   ALTER TABLE ONLY public.rent DROP CONSTRAINT rent_book_id_fkey;
       public          postgres    false    216    219    3473            ?           2606    18120    rent rent_user_id_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.rent
    ADD CONSTRAINT rent_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);
 @   ALTER TABLE ONLY public.rent DROP CONSTRAINT rent_user_id_fkey;
       public          postgres    false    3469    214    219            *   ?   x^%?9nC1Dk?.?p?]?P??ƅ??O??3o0]??'?J??Ї?`]Ȗ?r?)=ov_?T?????–???1I??-?????7{<^ɽ??	?u???t???VX???>*gΐ?Axʕ?6?VUxE۔????u%?`Կ?u?Q???`?M???	???\g???l?????L?0?????s???J)      1      x^36?4?26?4?????? k?      0   ?   x^?нn? ????8?0kեj:TY? *۱l,?wߤא???G??쥌?'???yf??Z&??l?$?&?6-?!h??C???ŭ?~-bY????-?L?K?J??m?}??qb?aP?*T????=H,?u?if%7?]?x?sn?3JjK1UH?0?I:*&_I?L1c?1?G?}~&????t??x*U??1d?#?	???z+O`?d???e?0F??a ?)??????9??'?j      ,   ?   x^???m? ??5T1?O%\)%dNP?m??GqRB?g??O??~??^??4x??lP;????:[?`??????~?u???J0???2?]W:?8?s6???@a??Ɔ?!)??.*?9"?[?ϲ?gWe?W ɓDo?F?D?)?????.????_,?͔KD??DS??`??y?(8?i????9??pc?      3   ?   x^}?;?1Ck?.
??Hw?ƒ5??B)R6	>?p02:-??(?*1'?s?o?ȍ@W??ۖ?M?? 2??2X ?	hyC]??O?Ew?$???2Lhm?KA?)???XUwpwvLZ????@܅Ĥ??NP̀?$PjO???|????oT;A      .   ?   x^U?91 k?? ??q?/4v???"??=h?f??DX?O?@?uݾ?@:j5????D+lh!i.?j?ǰ_t??????
FI??U??(?B??#s?Ӆ??3ݡ?LE?>??+?1e????amC??M?]?OιR?4     