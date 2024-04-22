PGDMP  
    8                |            Escuela    16.2    16.2 "    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24576    Escuela    DATABASE     �   CREATE DATABASE "Escuela" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Escuela";
                postgres    false            �            1259    24577    areaconocimiento    TABLE     �   CREATE TABLE public.areaconocimiento (
    codigo character varying(10) NOT NULL,
    area character varying(40) NOT NULL,
    departamentocodigo character varying(10) NOT NULL
);
 $   DROP TABLE public.areaconocimiento;
       public         heap    postgres    false            �            1259    24584    asignaturas    TABLE     R  CREATE TABLE public.asignaturas (
    clave character varying(10) NOT NULL,
    asignatura character varying(40) NOT NULL,
    tipo character varying(20) NOT NULL,
    curso integer NOT NULL,
    creditost real NOT NULL,
    creditosl real NOT NULL,
    duracion character varying(40) NOT NULL,
    libreconfiguracion boolean NOT NULL
);
    DROP TABLE public.asignaturas;
       public         heap    postgres    false            �            1259    24589    departamento    TABLE     �   CREATE TABLE public.departamento (
    codigo character varying(10) NOT NULL,
    departamento character varying(40) NOT NULL
);
     DROP TABLE public.departamento;
       public         heap    postgres    false            �            1259    24596    horariom    TABLE     E  CREATE TABLE public.horariom (
    clavegrupo character varying(10) NOT NULL,
    horario time without time zone NOT NULL,
    diassemana character varying(30) NOT NULL,
    grupode character varying(10) NOT NULL,
    asignaturasclave character varying(10) NOT NULL,
    profesoresmatricula character varying(20) NOT NULL
);
    DROP TABLE public.horariom;
       public         heap    postgres    false            �            1259    24601 
   profesores    TABLE     ?  CREATE TABLE public.profesores (
    matricula character varying(20) NOT NULL,
    nombre character varying(20) NOT NULL,
    apellidos character varying(40) NOT NULL,
    despacho character varying(10) NOT NULL,
    horario time without time zone NOT NULL,
    areaconocimientocodigo character varying(10) NOT NULL
);
    DROP TABLE public.profesores;
       public         heap    postgres    false            �            1259    24606 
   titulacion    TABLE     �   CREATE TABLE public.titulacion (
    codigo character varying(10) NOT NULL,
    titulacion character varying(40) NOT NULL,
    areaconocimientocodigo character varying(10) NOT NULL
);
    DROP TABLE public.titulacion;
       public         heap    postgres    false            �            1259    24611    titulacion_asignaturas    TABLE     �   CREATE TABLE public.titulacion_asignaturas (
    titulacioncodigo character varying(10) NOT NULL,
    asignaturasclave character varying(10) NOT NULL
);
 *   DROP TABLE public.titulacion_asignaturas;
       public         heap    postgres    false            �          0    24577    areaconocimiento 
   TABLE DATA           L   COPY public.areaconocimiento (codigo, area, departamentocodigo) FROM stdin;
    public          postgres    false    215   D,       �          0    24584    asignaturas 
   TABLE DATA           y   COPY public.asignaturas (clave, asignatura, tipo, curso, creditost, creditosl, duracion, libreconfiguracion) FROM stdin;
    public          postgres    false    216   -       �          0    24589    departamento 
   TABLE DATA           <   COPY public.departamento (codigo, departamento) FROM stdin;
    public          postgres    false    217   D.       �          0    24596    horariom 
   TABLE DATA           s   COPY public.horariom (clavegrupo, horario, diassemana, grupode, asignaturasclave, profesoresmatricula) FROM stdin;
    public          postgres    false    218   �.       �          0    24601 
   profesores 
   TABLE DATA           m   COPY public.profesores (matricula, nombre, apellidos, despacho, horario, areaconocimientocodigo) FROM stdin;
    public          postgres    false    219   :/       �          0    24606 
   titulacion 
   TABLE DATA           P   COPY public.titulacion (codigo, titulacion, areaconocimientocodigo) FROM stdin;
    public          postgres    false    220   W0       �          0    24611    titulacion_asignaturas 
   TABLE DATA           T   COPY public.titulacion_asignaturas (titulacioncodigo, asignaturasclave) FROM stdin;
    public          postgres    false    221   �0       2           2606    24583 *   areaconocimiento areaconocimiento_area_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.areaconocimiento
    ADD CONSTRAINT areaconocimiento_area_key UNIQUE (area);
 T   ALTER TABLE ONLY public.areaconocimiento DROP CONSTRAINT areaconocimiento_area_key;
       public            postgres    false    215            4           2606    24581 &   areaconocimiento areaconocimiento_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.areaconocimiento
    ADD CONSTRAINT areaconocimiento_pkey PRIMARY KEY (codigo);
 P   ALTER TABLE ONLY public.areaconocimiento DROP CONSTRAINT areaconocimiento_pkey;
       public            postgres    false    215            6           2606    24588    asignaturas asignaturas_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.asignaturas
    ADD CONSTRAINT asignaturas_pkey PRIMARY KEY (clave);
 F   ALTER TABLE ONLY public.asignaturas DROP CONSTRAINT asignaturas_pkey;
       public            postgres    false    216            8           2606    24595 *   departamento departamento_departamento_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_departamento_key UNIQUE (departamento);
 T   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_departamento_key;
       public            postgres    false    217            :           2606    24593    departamento departamento_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (codigo);
 H   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_pkey;
       public            postgres    false    217            <           2606    24600    horariom horariom_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.horariom
    ADD CONSTRAINT horariom_pkey PRIMARY KEY (clavegrupo);
 @   ALTER TABLE ONLY public.horariom DROP CONSTRAINT horariom_pkey;
       public            postgres    false    218            >           2606    24605    profesores profesores_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (matricula);
 D   ALTER TABLE ONLY public.profesores DROP CONSTRAINT profesores_pkey;
       public            postgres    false    219            B           2606    24615 2   titulacion_asignaturas titulacion_asignaturas_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titulacion_asignaturas
    ADD CONSTRAINT titulacion_asignaturas_pkey PRIMARY KEY (titulacioncodigo, asignaturasclave);
 \   ALTER TABLE ONLY public.titulacion_asignaturas DROP CONSTRAINT titulacion_asignaturas_pkey;
       public            postgres    false    221    221            @           2606    24610    titulacion titulacion_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.titulacion
    ADD CONSTRAINT titulacion_pkey PRIMARY KEY (codigo);
 D   ALTER TABLE ONLY public.titulacion DROP CONSTRAINT titulacion_pkey;
       public            postgres    false    220            C           2606    24616 #   areaconocimiento fkareaconoci862536    FK CONSTRAINT     �   ALTER TABLE ONLY public.areaconocimiento
    ADD CONSTRAINT fkareaconoci862536 FOREIGN KEY (departamentocodigo) REFERENCES public.departamento(codigo);
 M   ALTER TABLE ONLY public.areaconocimiento DROP CONSTRAINT fkareaconoci862536;
       public          postgres    false    217    215    4666            D           2606    24641    horariom fkhorariom670848    FK CONSTRAINT     �   ALTER TABLE ONLY public.horariom
    ADD CONSTRAINT fkhorariom670848 FOREIGN KEY (asignaturasclave) REFERENCES public.asignaturas(clave);
 C   ALTER TABLE ONLY public.horariom DROP CONSTRAINT fkhorariom670848;
       public          postgres    false    4662    218    216            E           2606    24646    horariom fkhorariom870855    FK CONSTRAINT     �   ALTER TABLE ONLY public.horariom
    ADD CONSTRAINT fkhorariom870855 FOREIGN KEY (profesoresmatricula) REFERENCES public.profesores(matricula);
 C   ALTER TABLE ONLY public.horariom DROP CONSTRAINT fkhorariom870855;
       public          postgres    false    4670    219    218            F           2606    24621    profesores fkprofesores726070    FK CONSTRAINT     �   ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT fkprofesores726070 FOREIGN KEY (areaconocimientocodigo) REFERENCES public.areaconocimiento(codigo);
 G   ALTER TABLE ONLY public.profesores DROP CONSTRAINT fkprofesores726070;
       public          postgres    false    219    215    4660            H           2606    24636 )   titulacion_asignaturas fktitulacion197485    FK CONSTRAINT     �   ALTER TABLE ONLY public.titulacion_asignaturas
    ADD CONSTRAINT fktitulacion197485 FOREIGN KEY (asignaturasclave) REFERENCES public.asignaturas(clave);
 S   ALTER TABLE ONLY public.titulacion_asignaturas DROP CONSTRAINT fktitulacion197485;
       public          postgres    false    216    4662    221            G           2606    24626    titulacion fktitulacion77323    FK CONSTRAINT     �   ALTER TABLE ONLY public.titulacion
    ADD CONSTRAINT fktitulacion77323 FOREIGN KEY (areaconocimientocodigo) REFERENCES public.areaconocimiento(codigo);
 F   ALTER TABLE ONLY public.titulacion DROP CONSTRAINT fktitulacion77323;
       public          postgres    false    4660    220    215            I           2606    24631 )   titulacion_asignaturas fktitulacion965779    FK CONSTRAINT     �   ALTER TABLE ONLY public.titulacion_asignaturas
    ADD CONSTRAINT fktitulacion965779 FOREIGN KEY (titulacioncodigo) REFERENCES public.titulacion(codigo);
 S   ALTER TABLE ONLY public.titulacion_asignaturas DROP CONSTRAINT fktitulacion965779;
       public          postgres    false    220    221    4672            �   �   x�U���0��ۧ��ё &$�`\]�RIh������[_������s��r��-�z&�W9��1rJ�(k�Qf� �ddP����s&('
7w�I75��AI��������1�h�[��[�@6��q��O�XbY
{�X�-�&��l����Ӥ��_�=(����K���w�ݤ�uf�.��C�Z7      �     x���MN�0�דS�(�-�J%P��e38nd��T���qr�,[v�v
�Ҳ@^�d�7ߛ�j�J������j�L!�j�8~��U�-��A9Tڡ�}R�9,|��S��'�2hw��5����h������q����Jx�ܐ�G�L_���(��(u���YɑUJ��V��.�٣�
�������~/9M򘫜˯�>�����:rf�����h7�&R���B����R��3�-<;?���1M �r�?�Y
w��ǣ����l���Ӝ:���"I�o���      �   �   x�sq000���KO��L-:�6��$d�霙����X��Z��\�X7F���*�$*'攦@�L8]����sᆘr�d��sxmqIf2TЌӱ�$j�9�kJirbr���y���@*�Ԓ�%�(59#�54@�s�M2K�J9�b���� U`E      �   =   x�s
000�44�2 !N�R�D ��Q���29CR�29��A*��݀4W� ͶZ      �     x�MѱN�0���0�g'i�VR�Z���h�b)8���#C�>�_�s���������{��@�Nd�u��8���(������vq�dݙ`�.o,o�P�"�2H�a|�?|��a\)����SX����go��`�4�v4Y�n����Co%��g簡O�ã�2����\���h����>Zúgܤ>WDxp{ͣh���]�o��dd���B�j�{�ka��_�ZzF�&=�V�+��E`��֧q��fy)?9~���$I~ �y�      �   �   x��100���KO��L-:�6Q!5O�3/-�(����DNGg�
��B#N�ĒT�D��cA�NI,�1��1��MM�L�̃�4���p�&����,��+I-�KL���K�+2�(2����K?����b�
�e�yU@��jL�b���� i�9U      �   N   x��100�tvR\! ��g�Cx�(<�%2�� ��92���>}&(*M!r��<��f\1z\\\ �s-�     