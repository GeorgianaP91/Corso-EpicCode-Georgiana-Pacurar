PGDMP         .                z           multedb    14.2    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16501    multedb    DATABASE     R   CREATE DATABASE multedb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE multedb;
                postgres    false            �            1259    16502    auto    TABLE     �   CREATE TABLE public.auto (
    targa character varying(10) NOT NULL,
    marca character varying(20) NOT NULL,
    modello character varying(20) NOT NULL
);
    DROP TABLE public.auto;
       public         heap    postgres    false            �            1259    16517 
   infrazione    TABLE     �   CREATE TABLE public.infrazione (
    id integer NOT NULL,
    data character varying(10) NOT NULL,
    tipo character varying(40) NOT NULL,
    importo real NOT NULL,
    targa_auto character varying(20)
);
    DROP TABLE public.infrazione;
       public         heap    postgres    false            �          0    16502    auto 
   TABLE DATA           5   COPY public.auto (targa, marca, modello) FROM stdin;
    public          postgres    false    209   D       �          0    16517 
   infrazione 
   TABLE DATA           I   COPY public.infrazione (id, data, tipo, importo, targa_auto) FROM stdin;
    public          postgres    false    210   �       j           2606    16506    auto auto_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.auto
    ADD CONSTRAINT auto_pkey PRIMARY KEY (targa);
 8   ALTER TABLE ONLY public.auto DROP CONSTRAINT auto_pkey;
       public            postgres    false    209            l           2606    16521    infrazione infrazione_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.infrazione
    ADD CONSTRAINT infrazione_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.infrazione DROP CONSTRAINT infrazione_pkey;
       public            postgres    false    210            m           2606    16522 %   infrazione infrazione_targa_auto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.infrazione
    ADD CONSTRAINT infrazione_targa_auto_fkey FOREIGN KEY (targa_auto) REFERENCES public.auto(targa);
 O   ALTER TABLE ONLY public.infrazione DROP CONSTRAINT infrazione_targa_auto_fkey;
       public          postgres    false    210    3434    209            �   C   x�s�03��p�t,M��4���33����t�L,�(�+��r
*���t�/J�H,.N,����� ��      �   �   x�%˻�0 ��n
O��CBj�E%�I\XBX�&E�a#(�{����VH��K�f��<��� 7�k����([��w�IOSj�ٌ���+�s���_�w��@lI�I���W]����|i��=�6��KW&J     