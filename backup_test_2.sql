PGDMP     %    :                {            maps    15.3    15.3 ,    2           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            3           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            4           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            5           1262    16413    maps    DATABASE     f   CREATE DATABASE maps WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE maps;
                postgres    false            �            1259    17403    Devices    TABLE     �   CREATE TABLE public."Devices" (
    "deviceId" integer NOT NULL,
    name character varying(255),
    "userId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Devices";
       public         heap    postgres    false            �            1259    17402    Devices_deviceId_seq    SEQUENCE     �   CREATE SEQUENCE public."Devices_deviceId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Devices_deviceId_seq";
       public          postgres    false    217            6           0    0    Devices_deviceId_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Devices_deviceId_seq" OWNED BY public."Devices"."deviceId";
          public          postgres    false    216            �            1259    17415 	   Histories    TABLE     j  CREATE TABLE public."Histories" (
    id integer NOT NULL,
    "deviceName" character varying(255),
    address character varying(255),
    latitude double precision,
    longitude double precision,
    "deviceId" integer,
    date timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Histories";
       public         heap    postgres    false            �            1259    17414    Histories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Histories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Histories_id_seq";
       public          postgres    false    219            7           0    0    Histories_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Histories_id_seq" OWNED BY public."Histories".id;
          public          postgres    false    218            �            1259    17429    HistoryLasts    TABLE     m  CREATE TABLE public."HistoryLasts" (
    id integer NOT NULL,
    "deviceName" character varying(255),
    address character varying(255),
    latitude double precision,
    longitude double precision,
    "deviceId" integer,
    date timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."HistoryLasts";
       public         heap    postgres    false            �            1259    17428    HistoryLasts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."HistoryLasts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."HistoryLasts_id_seq";
       public          postgres    false    221            8           0    0    HistoryLasts_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."HistoryLasts_id_seq" OWNED BY public."HistoryLasts".id;
          public          postgres    false    220            �            1259    17443    Latests    TABLE     ~  CREATE TABLE public."Latests" (
    id integer NOT NULL,
    "deviceName" character varying(255),
    address character varying(255),
    latitude double precision,
    longitude double precision,
    "deviceId" integer,
    "userId" integer,
    date timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Latests";
       public         heap    postgres    false            �            1259    17442    Latests_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Latests_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Latests_id_seq";
       public          postgres    false    223            9           0    0    Latests_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Latests_id_seq" OWNED BY public."Latests".id;
          public          postgres    false    222            �            1259    17337    Users    TABLE     P  CREATE TABLE public."Users" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    role character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    17336    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public          postgres    false    215            :           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public          postgres    false    214            �           2604    17406    Devices deviceId    DEFAULT     z   ALTER TABLE ONLY public."Devices" ALTER COLUMN "deviceId" SET DEFAULT nextval('public."Devices_deviceId_seq"'::regclass);
 C   ALTER TABLE public."Devices" ALTER COLUMN "deviceId" DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    17418    Histories id    DEFAULT     p   ALTER TABLE ONLY public."Histories" ALTER COLUMN id SET DEFAULT nextval('public."Histories_id_seq"'::regclass);
 =   ALTER TABLE public."Histories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    17432    HistoryLasts id    DEFAULT     v   ALTER TABLE ONLY public."HistoryLasts" ALTER COLUMN id SET DEFAULT nextval('public."HistoryLasts_id_seq"'::regclass);
 @   ALTER TABLE public."HistoryLasts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    17446 
   Latests id    DEFAULT     l   ALTER TABLE ONLY public."Latests" ALTER COLUMN id SET DEFAULT nextval('public."Latests_id_seq"'::regclass);
 ;   ALTER TABLE public."Latests" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    17340    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            )          0    17403    Devices 
   TABLE DATA           Y   COPY public."Devices" ("deviceId", name, "userId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   �5       +          0    17415 	   Histories 
   TABLE DATA           �   COPY public."Histories" (id, "deviceName", address, latitude, longitude, "deviceId", date, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   �5       -          0    17429    HistoryLasts 
   TABLE DATA           �   COPY public."HistoryLasts" (id, "deviceName", address, latitude, longitude, "deviceId", date, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   �7       /          0    17443    Latests 
   TABLE DATA           �   COPY public."Latests" (id, "deviceName", address, latitude, longitude, "deviceId", "userId", date, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   �8       '          0    17337    Users 
   TABLE DATA           `   COPY public."Users" (id, username, email, role, password, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   �9       ;           0    0    Devices_deviceId_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Devices_deviceId_seq"', 6, true);
          public          postgres    false    216            <           0    0    Histories_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Histories_id_seq"', 18, true);
          public          postgres    false    218            =           0    0    HistoryLasts_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."HistoryLasts_id_seq"', 6, true);
          public          postgres    false    220            >           0    0    Latests_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Latests_id_seq"', 6, true);
          public          postgres    false    222            ?           0    0    Users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Users_id_seq"', 4, true);
          public          postgres    false    214            �           2606    17408    Devices Devices_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Devices"
    ADD CONSTRAINT "Devices_pkey" PRIMARY KEY ("deviceId");
 B   ALTER TABLE ONLY public."Devices" DROP CONSTRAINT "Devices_pkey";
       public            postgres    false    217            �           2606    17422    Histories Histories_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Histories"
    ADD CONSTRAINT "Histories_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Histories" DROP CONSTRAINT "Histories_pkey";
       public            postgres    false    219            �           2606    17436    HistoryLasts HistoryLasts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."HistoryLasts"
    ADD CONSTRAINT "HistoryLasts_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."HistoryLasts" DROP CONSTRAINT "HistoryLasts_pkey";
       public            postgres    false    221            �           2606    17450    Latests Latests_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Latests"
    ADD CONSTRAINT "Latests_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Latests" DROP CONSTRAINT "Latests_pkey";
       public            postgres    false    223            �           2606    17346    Users Users_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key";
       public            postgres    false    215            �           2606    17344    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    215            �           2606    17409    Devices Devices_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Devices"
    ADD CONSTRAINT "Devices_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public."Devices" DROP CONSTRAINT "Devices_userId_fkey";
       public          postgres    false    215    217    3467            �           2606    17423 !   Histories Histories_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Histories"
    ADD CONSTRAINT "Histories_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public."Devices"("deviceId") ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public."Histories" DROP CONSTRAINT "Histories_deviceId_fkey";
       public          postgres    false    217    3469    219            �           2606    17437 '   HistoryLasts HistoryLasts_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."HistoryLasts"
    ADD CONSTRAINT "HistoryLasts_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public."Devices"("deviceId") ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public."HistoryLasts" DROP CONSTRAINT "HistoryLasts_deviceId_fkey";
       public          postgres    false    217    3469    221            �           2606    17451    Latests Latests_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Latests"
    ADD CONSTRAINT "Latests_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public."Devices"("deviceId") ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public."Latests" DROP CONSTRAINT "Latests_deviceId_fkey";
       public          postgres    false    223    3469    217            )   C   x�3�t*-�4�4202�50�52W04�26�22׳46�60�#�e�m����T����n�W� ]Y�      +   �  x���1o�P�g�S�׺�w��9c�P����C�������������D�J�e!c�~���&�D	�ɒ}�?��{�CN�����M3~�v����3��_������x:�Cw�:U���4�n�����U]��jp�9%@�\�z2��O�\�B#D�Hr�)��}�IH�o�n�:��=�@�;^:�y���(���W��Q<�m�z`)��&�m8����(EI��%�&�\w���v�F�a6�����Q`X� &,�U���A$b�˥ w̄0��
�h��� Em5z�/�w��vw�f��x�ʫQ3>�B6�p�'��M<���!F>+$���י�Ͻ�Z��h��<J1�6?ޝ^�<�~vq=����Efl�U�Mg�Y�R�m���֭��)�_�'�S/A�Xܰ� ��D��ԳHus���i��v�      -     x�uϽJA�z�)n�d��{w�L,,dml�������h����<��"V[F|�m�����A���p�|���ǬX<B�t`۷�M�a�z���4AI�~\��Q�a�mnaP-`ׇ
���@F��C�O�P�2%I()D�-��ԒE�H6��1-��I�iesI�5 ڐ�R��`�Id���*�M������j�:�/g�/�K	��~UF��Yr8(G��ee�~�������
/�:T���
���gN�։�?=�2֭{�V��@�"I�w,qf      /     x�uнJA��z�)�w����ݕ��������%��+$ga'Z� "�0� ��Օ�#��wpO�"Q��30�q�5a���׻ �~����������(�a�O�ր�V���3�P�����(�r(�y��� #	�"�(��8B�:�d�!��,sL3-��I�iesI�5 ڑ��Tn0�$2t۩۲�bJ����8]�N?f����}qã�r8��:�#'���Y��B:�B�4Q�*�/`���qN�։�?I1�+u[�nE�"I�/fq�      '   _  x�u�Mo�@���+8xk\w�]@N�
�TA, �^�4 _�b�_�ۨ1^&3��'3���&��&�S���U�%�����*J7L�=(�R��5�t)e�f�÷d�Y;�V���[��A��{CAQl�A=��i`C����Ǆ�H�T�%@�'(>&,>	��C����۬�?f��I2�\�֍#G���.��T���.�ft0�K&�0�	�!"�7:w��0���\�Jiz ��A��	����Yڍ����l������j�e���0Zt�d�C��!@x�F���Z��N����U+�v_}��CR(���2`��
�>Zfs���C��/��$\=M� �)<�BBn���	X��.֢�     