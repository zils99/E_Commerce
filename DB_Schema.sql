PGDMP     0                    |            e_commerce_zils    15.1    15.1 7    Q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            R           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            S           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            T           1262    16599    e_commerce_zils    DATABASE     �   CREATE DATABASE e_commerce_zils WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE e_commerce_zils;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            U           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    17074    alamat_customer    TABLE     �   CREATE TABLE public.alamat_customer (
    id_alamat integer NOT NULL,
    id_customer integer,
    id_kelurahan integer,
    rt integer,
    rw integer,
    catatan character varying
);
 #   DROP TABLE public.alamat_customer;
       public         heap    postgres    false    4            �            1259    17043    barang    TABLE     x   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    id_jenis integer,
    nama_barang character varying
);
    DROP TABLE public.barang;
       public         heap    postgres    false    4            �            1259    17031    barang_di_toko    TABLE     �   CREATE TABLE public.barang_di_toko (
    id_toko integer,
    id_barang integer,
    id_barang_toko integer NOT NULL,
    jumlah_tersedia integer,
    detail_barang text
);
 "   DROP TABLE public.barang_di_toko;
       public         heap    postgres    false    4            �            1259    17067    customer    TABLE     �   CREATE TABLE public.customer (
    id_customer integer NOT NULL,
    nama_customer character varying,
    nomor_hp character varying
);
    DROP TABLE public.customer;
       public         heap    postgres    false    4            �            1259    17038    foto_barang_di_toko    TABLE     y   CREATE TABLE public.foto_barang_di_toko (
    id_foto integer NOT NULL,
    id_barang_toko integer,
    url_foto text
);
 '   DROP TABLE public.foto_barang_di_toko;
       public         heap    postgres    false    4            �            1259    17050    jenis_barang    TABLE     f   CREATE TABLE public.jenis_barang (
    id_jenis integer NOT NULL,
    nama_jenis character varying
);
     DROP TABLE public.jenis_barang;
       public         heap    postgres    false    4            �            1259    17093 	   kelurahan    TABLE     �   CREATE TABLE public.kelurahan (
    id_kelurahan integer NOT NULL,
    id_kota integer,
    nama_kelurahan character varying
);
    DROP TABLE public.kelurahan;
       public         heap    postgres    false    4            �            1259    17064 	   keranjang    TABLE     z   CREATE TABLE public.keranjang (
    id_barang_toko integer,
    id_customer integer,
    id_keranjang integer NOT NULL
);
    DROP TABLE public.keranjang;
       public         heap    postgres    false    4            �            1259    17088    kota    TABLE     u   CREATE TABLE public.kota (
    id_provinsi integer,
    id_kota integer NOT NULL,
    nama_kota character varying
);
    DROP TABLE public.kota;
       public         heap    postgres    false    4            �            1259    17057    nota_pembelian    TABLE     �   CREATE TABLE public.nota_pembelian (
    id_nota integer NOT NULL,
    id_toko integer,
    id_customer integer,
    nama_ekspedisi character varying,
    status_pengantaran character varying,
    status_pembayaran character varying
);
 "   DROP TABLE public.nota_pembelian;
       public         heap    postgres    false    4            �            1259    17081    provinsi    TABLE     h   CREATE TABLE public.provinsi (
    id_provinsi integer NOT NULL,
    nama_provinsi character varying
);
    DROP TABLE public.provinsi;
       public         heap    postgres    false    4            �            1259    17026    toko    TABLE     g   CREATE TABLE public.toko (
    id_toko integer NOT NULL,
    tanggal_join date,
    id_kota integer
);
    DROP TABLE public.toko;
       public         heap    postgres    false    4            K          0    17074    alamat_customer 
   TABLE DATA                 public          postgres    false    222   �>       F          0    17043    barang 
   TABLE DATA                 public          postgres    false    217   �>       D          0    17031    barang_di_toko 
   TABLE DATA                 public          postgres    false    215   ?       J          0    17067    customer 
   TABLE DATA                 public          postgres    false    221   ?       E          0    17038    foto_barang_di_toko 
   TABLE DATA                 public          postgres    false    216   5?       G          0    17050    jenis_barang 
   TABLE DATA                 public          postgres    false    218   O?       N          0    17093 	   kelurahan 
   TABLE DATA                 public          postgres    false    225   i?       I          0    17064 	   keranjang 
   TABLE DATA                 public          postgres    false    220   D@       M          0    17088    kota 
   TABLE DATA                 public          postgres    false    224   ^@       H          0    17057    nota_pembelian 
   TABLE DATA                 public          postgres    false    219   �@       L          0    17081    provinsi 
   TABLE DATA                 public          postgres    false    223   A       C          0    17026    toko 
   TABLE DATA                 public          postgres    false    214   hA       �           2606    17080 $   alamat_customer alamat_customer_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.alamat_customer
    ADD CONSTRAINT alamat_customer_pkey PRIMARY KEY (id_alamat);
 N   ALTER TABLE ONLY public.alamat_customer DROP CONSTRAINT alamat_customer_pkey;
       public            postgres    false    222            �           2606    17037 "   barang_di_toko barang_di_toko_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.barang_di_toko
    ADD CONSTRAINT barang_di_toko_pkey PRIMARY KEY (id_barang_toko);
 L   ALTER TABLE ONLY public.barang_di_toko DROP CONSTRAINT barang_di_toko_pkey;
       public            postgres    false    215            �           2606    17049    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    217            �           2606    17073    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id_customer);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    221            �           2606    17167 *   foto_barang_di_toko foto_barang_di_toko_pk 
   CONSTRAINT     m   ALTER TABLE ONLY public.foto_barang_di_toko
    ADD CONSTRAINT foto_barang_di_toko_pk PRIMARY KEY (id_foto);
 T   ALTER TABLE ONLY public.foto_barang_di_toko DROP CONSTRAINT foto_barang_di_toko_pk;
       public            postgres    false    216            �           2606    17056    jenis_barang jenis_barang_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.jenis_barang
    ADD CONSTRAINT jenis_barang_pkey PRIMARY KEY (id_jenis);
 H   ALTER TABLE ONLY public.jenis_barang DROP CONSTRAINT jenis_barang_pkey;
       public            postgres    false    218            �           2606    17097    kelurahan kelurahan_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.kelurahan
    ADD CONSTRAINT kelurahan_pkey PRIMARY KEY (id_kelurahan);
 B   ALTER TABLE ONLY public.kelurahan DROP CONSTRAINT kelurahan_pkey;
       public            postgres    false    225            �           2606    17165    keranjang keranjang_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_pk PRIMARY KEY (id_keranjang);
 @   ALTER TABLE ONLY public.keranjang DROP CONSTRAINT keranjang_pk;
       public            postgres    false    220            �           2606    17092    kota kota_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.kota
    ADD CONSTRAINT kota_pkey PRIMARY KEY (id_kota);
 8   ALTER TABLE ONLY public.kota DROP CONSTRAINT kota_pkey;
       public            postgres    false    224            �           2606    17063 "   nota_pembelian nota_pembelian_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.nota_pembelian
    ADD CONSTRAINT nota_pembelian_pkey PRIMARY KEY (id_nota);
 L   ALTER TABLE ONLY public.nota_pembelian DROP CONSTRAINT nota_pembelian_pkey;
       public            postgres    false    219            �           2606    17087    provinsi provinsi_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.provinsi
    ADD CONSTRAINT provinsi_pkey PRIMARY KEY (id_provinsi);
 @   ALTER TABLE ONLY public.provinsi DROP CONSTRAINT provinsi_pkey;
       public            postgres    false    223            �           2606    17030    toko toko_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_pkey PRIMARY KEY (id_toko);
 8   ALTER TABLE ONLY public.toko DROP CONSTRAINT toko_pkey;
       public            postgres    false    214            �           2606    17123 0   alamat_customer alamat_customer_id_customer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alamat_customer
    ADD CONSTRAINT alamat_customer_id_customer_fkey FOREIGN KEY (id_customer) REFERENCES public.customer(id_customer);
 Z   ALTER TABLE ONLY public.alamat_customer DROP CONSTRAINT alamat_customer_id_customer_fkey;
       public          postgres    false    3231    222    221            �           2606    17148 1   alamat_customer alamat_customer_id_kelurahan_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alamat_customer
    ADD CONSTRAINT alamat_customer_id_kelurahan_fkey FOREIGN KEY (id_kelurahan) REFERENCES public.kelurahan(id_kelurahan);
 [   ALTER TABLE ONLY public.alamat_customer DROP CONSTRAINT alamat_customer_id_kelurahan_fkey;
       public          postgres    false    3239    222    225            �           2606    17098 ,   barang_di_toko barang_di_toko_id_barang_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.barang_di_toko
    ADD CONSTRAINT barang_di_toko_id_barang_fkey FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang);
 V   ALTER TABLE ONLY public.barang_di_toko DROP CONSTRAINT barang_di_toko_id_barang_fkey;
       public          postgres    false    215    217    3223            �           2606    17108 *   barang_di_toko barang_di_toko_id_toko_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.barang_di_toko
    ADD CONSTRAINT barang_di_toko_id_toko_fkey FOREIGN KEY (id_toko) REFERENCES public.toko(id_toko);
 T   ALTER TABLE ONLY public.barang_di_toko DROP CONSTRAINT barang_di_toko_id_toko_fkey;
       public          postgres    false    214    215    3217            �           2606    17103    barang barang_id_jenis_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_id_jenis_fkey FOREIGN KEY (id_jenis) REFERENCES public.jenis_barang(id_jenis);
 E   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_id_jenis_fkey;
       public          postgres    false    217    3225    218            �           2606    17158 ;   foto_barang_di_toko foto_barang_di_toko_id_barang_toko_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.foto_barang_di_toko
    ADD CONSTRAINT foto_barang_di_toko_id_barang_toko_fkey FOREIGN KEY (id_barang_toko) REFERENCES public.barang_di_toko(id_barang_toko);
 e   ALTER TABLE ONLY public.foto_barang_di_toko DROP CONSTRAINT foto_barang_di_toko_id_barang_toko_fkey;
       public          postgres    false    215    216    3219            �           2606    17184    kelurahan kelurahan_kota_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.kelurahan
    ADD CONSTRAINT kelurahan_kota_fk FOREIGN KEY (id_kota) REFERENCES public.kota(id_kota) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.kelurahan DROP CONSTRAINT kelurahan_kota_fk;
       public          postgres    false    224    3237    225            �           2606    17128 '   keranjang keranjang_id_barang_toko_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_id_barang_toko_fkey FOREIGN KEY (id_barang_toko) REFERENCES public.barang_di_toko(id_barang_toko);
 Q   ALTER TABLE ONLY public.keranjang DROP CONSTRAINT keranjang_id_barang_toko_fkey;
       public          postgres    false    215    220    3219            �           2606    17133 $   keranjang keranjang_id_customer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_id_customer_fkey FOREIGN KEY (id_customer) REFERENCES public.customer(id_customer);
 N   ALTER TABLE ONLY public.keranjang DROP CONSTRAINT keranjang_id_customer_fkey;
       public          postgres    false    3231    220    221            �           2606    17138    kota kota_id_provinsi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.kota
    ADD CONSTRAINT kota_id_provinsi_fkey FOREIGN KEY (id_provinsi) REFERENCES public.provinsi(id_provinsi);
 D   ALTER TABLE ONLY public.kota DROP CONSTRAINT kota_id_provinsi_fkey;
       public          postgres    false    223    3235    224            �           2606    17118 .   nota_pembelian nota_pembelian_id_customer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nota_pembelian
    ADD CONSTRAINT nota_pembelian_id_customer_fkey FOREIGN KEY (id_customer) REFERENCES public.customer(id_customer);
 X   ALTER TABLE ONLY public.nota_pembelian DROP CONSTRAINT nota_pembelian_id_customer_fkey;
       public          postgres    false    3231    219    221            �           2606    17113 *   nota_pembelian nota_pembelian_id_toko_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nota_pembelian
    ADD CONSTRAINT nota_pembelian_id_toko_fkey FOREIGN KEY (id_toko) REFERENCES public.toko(id_toko);
 T   ALTER TABLE ONLY public.nota_pembelian DROP CONSTRAINT nota_pembelian_id_toko_fkey;
       public          postgres    false    3217    219    214            �           2606    17153    toko toko_id_kota_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_id_kota_fkey FOREIGN KEY (id_kota) REFERENCES public.kota(id_kota);
 @   ALTER TABLE ONLY public.toko DROP CONSTRAINT toko_id_kota_fkey;
       public          postgres    false    224    214    3237            K   
   x���          F   
   x���          D   
   x���          J   
   x���          E   
   x���          G   
   x���          N   �   x��ѱ�0�ᝧ�&� es%5��|�7X)�)v���5,Nt����'-�*?֤(�y&�uޢ0� �y�?���Q�Hl�p�ܠ���i����Q>�Z��a�-��Լ3��@�w ��7;q�e��A��d�5v��GS�m���އ��P�l<���L]��0�H�n��^�T�V��ߦn0u�;��՜4���0>�zҪ      I   
   x���          M   y   x���v
Q���W((M��L���/ITs�	uV�0�Q04 �N�y)�y���\���1�I�N,�$FP�ؚ���ĢD��k����O�cc�-�E�I���Dk�⛘u KWa      H   
   x���          L   W   x���v
Q���W((M��L�+(�/��+�Ts�	uV�0�QP�J,OTpJ,J,Q״��$B�LWHj^zb�ڌ��2sK�@��� �2      C   
   x���         