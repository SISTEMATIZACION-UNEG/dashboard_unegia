SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';
SET default_table_access_method = heap;

-- =========================
-- TABLA reportes
-- =========================

CREATE TABLE IF NOT EXISTS public.reportes (
    id integer NOT NULL,
    cedula character varying(20) NOT NULL,
    categoria integer NOT NULL,
    tipo_falla integer NOT NULL,
    fallas_otros text,
    sede integer NOT NULL,
    foto_path character varying(255),
    descripcion text NOT NULL,
    fecha_reporte timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    trial583 character(1),
    ip_usuario character varying(50),
    lat_foto double precision,
    lon_foto double precision
);

-- =========================
-- SECUENCIA
-- =========================

CREATE SEQUENCE IF NOT EXISTS public.reportes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.reportes_id_seq OWNED BY public.reportes.id;

ALTER TABLE ONLY public.reportes 
    ALTER COLUMN id SET DEFAULT nextval('public.reportes_id_seq'::regclass);

-- =========================
-- DATOS
-- =========================

-- Solo inserta si la tabla está vacía
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM public.reportes LIMIT 1) THEN
--
-- Data for Name: reportes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.reportes (id, cedula, categoria, tipo_falla, fallas_otros, sede, foto_path, descripcion, fecha_reporte, trial583, ip_usuario, lat_foto, lon_foto) FROM stdin;
1	19905671	1	1		1	uploads/19905671_regleta_en_llamas.jpg	toma corriente dañada esta quemada aula 10	2025-11-04 09:01:18	T	\N	\N	\N
2	19905671	1	3		1	uploads/19905671_luminaria_danada.jpg	lampara dañada aula 3 esta por caer	2025-11-04 09:02:47	T	\N	\N	\N
3	19905671	1	71	guaya alta tensión rota 	1	uploads/19905671_descargar_por_contacto.jpg	peligro guaya caída en la entrada de la universidad	2025-11-04 09:05:15	T	\N	\N	\N
4	19905671	1	10		1	uploads/19905671_braker_caido.jpg	braker dañado sala usos multiples	2025-11-04 09:13:16	T	\N	\N	\N
5	19905671	2	13		1	uploads/19905671_humedad_paredes.jpg	paredes con humedad en deposito de informática	2025-11-04 09:15:01	T	\N	\N	\N
6	19905671	2	12		1	uploads/19905671_tuberia_rota.jpg	tubería rota baños de profesores	2025-11-04 09:15:32	T	\N	\N	\N
7	19905671	3	23		1	uploads/19905671_nevera.jpg	problema con nevera no enfria	2025-11-04 09:32:36	T	\N	\N	\N
8	19905671	3	73	filtro bota agua	1	uploads/19905671_dispensador_de_agua.jpg	el dispensador del piso 1 bota toda el agua	2025-11-04 09:33:24	T	\N	\N	\N
9	19905671	4	26		1	uploads/19905671_puerta_danada.jpg	puerta dañada aula 13	2025-11-04 10:11:26	T	\N	\N	\N
10	19905671	5	32		1	uploads/19905671_techo.jpg	techo filtraciones entrada del modulo	2025-11-04 10:12:33	T	\N	\N	\N
11	19905671	6	76	la cava de hielo esta rota	1	uploads/19905671_descarga.jpg	cava de deporte rota	2025-11-04 10:16:39	T	\N	\N	\N
12	19905671	6	46		1	uploads/19905671_pizarra_danada.jpg	pizarra aula 2 deteriorada	2025-11-04 10:17:21	T	\N	\N	\N
13	19905671	6	44		1	uploads/19905671_archivadores.jpg	archivadores dañados de recursos humanos	2025-11-04 10:17:49	T	\N	\N	\N
14	19905671	7	55		1	uploads/19905671_tinte_impresora.jpg	impresora sin tinta en secretaria	2025-11-04 10:29:10	T	\N	\N	\N
15	19905671	7	54		1	uploads/19905671_bombillos.jpg	falta de bombillos en pasillo 2 modulo informatica	2025-11-04 10:29:42	T	\N	\N	\N
16	19905671	8	78	proyecto no transmite	1	uploads/19905671_proyector.jpg	problema con proyecto de usos multiples no da imagen	2025-11-04 10:33:08	T	\N	\N	\N
17	19905672	1	6		9	uploads/19905672_transformador.jpg	exploto tranformador sede atlantico	2025-11-04 10:43:08	T	\N	\N	\N
18	19905672	2	18		9	uploads/19905672_bomba_agua.jpg	bomba de agua no acciona	2025-11-04 20:47:10	T	\N	\N	\N
19	19905672	2	20		9	uploads/19905672_humedad_paredes.jpg	hay filtacion y genera humedad y hongos en las paredes aula 2	2025-11-04 20:48:46	T	\N	\N	\N
20	19905672	3	21		9	uploads/19905672_problema_aire.jpg	aire acondicionado no enfria	2025-11-04 20:49:28	T	\N	\N	\N
21	19905672	3	73	problema con congelador	9	uploads/19905672_dispensador_de_agua.jpg	problemas con el congelador no prende	2025-11-04 20:50:16	T	\N	\N	\N
22	19905672	4	27		9	uploads/19905672_alarma_danada.jpg	alarma de incendio no activa	2025-11-04 20:52:18	T	\N	\N	\N
23	19905672	5	32		9	uploads/19905672_techo.jpg	techo con filtraciones	2025-11-04 20:54:26	T	\N	\N	\N
24	19905672	5	39		9	uploads/19905672_boldosas_sueltas.jpg	baldosas sueltas piso 2	2025-11-04 20:55:05	T	\N	\N	\N
25	19905672	5	75	cerca principal rota	9	uploads/19905672_paredes_danadas.jpg	cerca principal en mal estado y rompiendose	2025-11-04 20:55:48	T	\N	\N	\N
26	19905672	6	46		9	uploads/19905672_pizarra_danada.jpg	pizarra dañada aula 14	2025-11-04 21:25:57	T	\N	\N	\N
27	19905672	6	51		9	uploads/19905672_escritorios_danados.jpg	escritorio oficina informática en mal estado	2025-11-04 21:26:50	T	\N	\N	\N
28	19905672	6	43		9	uploads/19905672_mesa_inestable.jpg	mesa no se mantiene estable pata rota	2025-11-04 21:27:19	T	\N	\N	\N
29	19905672	7	54		9	uploads/19905672_bombillos.jpg	no hay bombillos en inventario del departamento de mantenimiento	2025-11-04 21:27:58	T	\N	\N	\N
30	19905672	7	58		9	uploads/19905672_agua_botellon.jpg	sin agua potable en la sede atlantico	2025-11-04 21:28:23	T	\N	\N	\N
31	19905672	7	60		9	uploads/19905672_papel.jpg	sin papel higienico en los baños	2025-11-04 21:28:48	T	\N	\N	\N
32	19905672	8	65		9	uploads/19905672_proyector.jpg	proyector no enciende	2025-11-04 21:29:09	T	\N	\N	\N
33	19905671	2	11		1	uploads/19905671_fuga_de_agua.jpg	SE ROMPIO TUBO DEL BAÑO DE PROFESORES akiiiiii	2025-11-05 14:48:19	T	\N	\N	\N
34	19905671	2	19		10	uploads/19905671_desague.jpg	desague tapado	2025-11-09 09:31:57.637059	\N	\N	\N	\N
36	19905673	2	13		10	uploads/19905673_grifo_danado.jpg	grifo dañado baño damas	2025-11-09 09:33:01.198275	\N	\N	\N	\N
38	19905671	2	12		13	uploads/19905671_tuberia_rota.jpg	tubo roto baño piso 2	2025-11-12 16:13:42.812027	\N	\N	\N	\N
39	19905671	3	22		9	uploads/19905671_dispensador_de_agua.jpg	problema	2025-11-12 18:41:38.793271	\N	\N	\N	\N
40	19905671	2	14		9	uploads/19905671_dispensador_de_agua.jpg	aja jaja jaja	2025-11-12 18:50:43.403306	\N	\N	\N	\N
41	19905671	8	65		9	uploads/19905671_mantenimiento.png	adadwad	2025-11-12 19:08:33.899926	\N	\N	\N	\N
42	19905671	7	54		10	uploads/19905671_mantenimiento.png	aki aki 2	2025-11-12 19:24:31.275372	\N	\N	\N	\N
43	19905672	5	33		10	uploads/19905672_problema_aire.jpg	problema nueva	2025-11-12 20:05:50.139841	\N	\N	\N	\N
44	19905671	6	44		10	uploads/19905671_nevera.jpg	dañada	2025-11-13 11:31:26.73715	\N	\N	\N	\N
45	19905671	6	44		10	uploads/19905671_nevera.jpg	adasdasdsad	2025-11-13 11:41:49.563487	\N	\N	\N	\N
46	19905671	2	13		12	uploads/19905671_dashboard.jpg	el callao	2025-11-15 07:02:56.012761	\N	\N	\N	\N
47	19905671	1	3		10	uploads/19905671_luminaria_danada.jpg	se daño bombillo	2025-11-25 19:11:05.968175	\N	\N	\N	\N
48	199056715	1	5		9	uploads/199056715_cableado_expuesto.jpg	prueba ubicacion	2025-11-27 13:31:32.329101	\N	\N	51.4964	-0.1224
49	19905671	1	3		10	uploads/19905671_regleta_en_llamas.jpg	prueba sin ubicacion	2025-11-28 16:58:45.002762	\N	\N	\N	\N
50	19905671	2	14		9	uploads/19905671_photo_2025-11-29_07-26-23.jpg	otra vez	2025-11-29 11:57:34.872736	\N	\N	\N	\N
51	19905671	2	13		9	uploads/19905671_20251129_114956.jpg	nuevamente	2025-11-29 16:06:39.411222	\N	\N	\N	\N
52	19905671	2	12		9	uploads/19905671_tinte_impresora.jpg	probando valores correo	2025-11-29 16:56:00.457776	\N	\N	\N	\N
53	19905671	2	14		9	uploads/19905671_tinte_impresora.jpg	probando nombres	2025-11-29 19:08:48.876786	\N	\N	\N	\N
54	10393317	3	23		13	uploads/10393317_insumos_electricos.jpg	intentando guardar	2025-11-29 19:17:57.479036	\N	\N	\N	\N
55	19905671	7	58		10	uploads/19905671_tinte_impresora.jpg	impresora sin tinta en piso 2 modulo 1	2026-01-22 15:02:18.21834	\N	\N	\N	\N
56	19905671	3	23		9	uploads/19905671_bombillos.jpg	bombillo quemado	2026-01-23 11:51:23.665823	\N	\N	\N	\N
\.


    END IF;
END $$;

-- =========================
-- AJUSTAR SECUENCIA AL ÚLTIMO ID
-- =========================

SELECT pg_catalog.setval(
    'public.reportes_id_seq',
    (SELECT COALESCE(MAX(id),1) FROM public.reportes),
    true
);

-- =========================
-- CLAVE PRIMARIA (solo si no existe)
-- =========================

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_constraint 
        WHERE conname = 'pk_reportes'
    ) THEN
        ALTER TABLE public.reportes
        ADD CONSTRAINT pk_reportes PRIMARY KEY (id);
    END IF;
END $$;