-- =========================================
-- LIMPIEZA PREVIA (para evitar conflictos)
-- =========================================

DROP TABLE IF EXISTS public.fallas CASCADE;
DROP TABLE IF EXISTS public.categorias CASCADE;

DROP SEQUENCE IF EXISTS public.fallas_id_seq;
DROP SEQUENCE IF EXISTS public.categorias_id_seq;

-- =========================================
-- TABLA: categorias
-- =========================================

CREATE TABLE public.categorias (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    inf text,
    trial356 character(1)
);

CREATE SEQUENCE public.categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.categorias_id_seq OWNED BY public.categorias.id;

ALTER TABLE ONLY public.categorias 
    ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);

-- =========================================
-- TABLA: fallas
-- =========================================

CREATE TABLE public.fallas (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    categoria_id integer NOT NULL,
    inf text,
    trial356 character(1)
);

CREATE SEQUENCE public.fallas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.fallas_id_seq OWNED BY public.fallas.id;

ALTER TABLE ONLY public.fallas 
    ALTER COLUMN id SET DEFAULT nextval('public.fallas_id_seq'::regclass);

-- =========================================
-- DATOS: categorias
-- =========================================

COPY public.categorias (id, nombre, inf, trial356) FROM stdin;
1	Eléctricas	Reportar fallas relacionadas con la eléctricidad, interruptores, cables, enchufes o bombillos, etc.	T
2	Plomería	Reportar fugas de agua, grifos dañados o drenajes obstruidos, ect.	T
3	Refrigeración	Reportar equipos que no enfrían, no encienten, hacen ruido o requieren mantenimiento preventivo, etc.	T
4	Seguridad	Reportar fallas en cerraduras, cámaras, alarmas o accesos restringidos, ect.	T
5	Infraestructura	Reportar deterioro del edificio en cualquier area.	T
6	Mobiliario	Reportar daños o desperfectos en escritorios, sillas, estantes o muebles en general, etc.	T
7	Suministros	Reportar falta de articulos de limpieza, personales o de mantenimiento.	T
8	Tecnologicas	Reportar daños a equipos tecnologicos de laboratorios o areas comunes.	T
\.

-- =========================================
-- DATOS: fallas
-- =========================================

COPY public.fallas (id, descripcion, categoria_id, inf, trial356) FROM stdin;
1	Toma corriente dañada	1	Reporta puntos eléctricos dañados que puedan generar riesgo o no permitan la conexión de equipos.	T
2	Interruptor no funciona	1	Indica fallas en interruptores que no prenden o apagan correctamente la luz.	T
3	Luminaria quemada	1	Señala luminarias o bombillos que no encienden o están quemados.	T
4	Corto circuito en el aula	1	Notifica presencia de cortocircuito o chispazos dentro del aula.	T
5	Cableado expuesto	1	Reporta cables expuestos o sin protección que representen peligro eléctrico.	T
6	Problemas con el transformador	1	Informa irregularidades en el transformador que alimenta el área.	T
7	Descarga eléctrica por contacto	1	Señala descargas eléctricas al tocar tomas o superficies metálicas.	T
8	Variaciones de energía	1	Reporta variaciones frecuentes de voltaje o apagones intermitentes.	T
9	Problemas en caseta de distribución eléctrica	1	Problemas detectados en la caseta o tablero de distribución eléctrica.	T
10	Breaker disparado	1	Breaker que se dispara constantemente o no puede restablecerse.	T
11	Fuga de agua	2	Fuga o daño en una toma de agua.	T
12	Tubería rota	2	Tubería rota o con pérdida de agua.	T
13	Grifo dañado	2	Grifo que gotea, no abre o no cierra correctamente.	T
14	Inodoro tapado	2	Inodoro obstruido o fuera de servicio.	T
15	Lavamanos tapado	2	Lavamanos con drenaje lento o totalmente tapado.	T
16	Tanque de agua con fuga	2	Fuga o pérdida en el tanque de almacenamiento de agua.	T
17	Fuga en el sistema de riego	2	Problemas en el sistema de riego que causa fugas o baja presión.	T
18	Bomba de agua dañada	2	Bomba de agua dañada o que no activa correctamente.	T
19	Desagüe obstruido	2	Tuberías o desagües bloqueados causando retorno de agua.	T
20	Humedad en paredes por filtración	2	Presencia de humedad en paredes o techos por filtración.	T
21	Problemas con aire acondicionado	3	Reporta cualquier inconvenientes con aire acondicionados.	T
22	Problemas con filtro de agua	3	Reporta filtros de agua potable con inconvenientes.	T
23	Problemas con neveras	3	Nevera o refrigerador que no enfría o emite ruidos extraños.	T
24	Mantenimiento preventivo	3	Solicitud de mantenimiento preventivo para equipos de servicios.	T
25	Cámara de seguridad sin señal	4	Cámara de seguridad sin señal o dañada.	T
26	Puerta de acceso dañada	4	Puerta de acceso dañada o sin cerradura funcional.	T
27	Alarma no se activa	4	Sistema de alarma que no activa o no emite señal sonora.	T
28	Luces de emergencia dañadas	4	Luminarias de emergencia que no encienden o están dañadas.	T
29	Falla en sistema contra incendios	4	Sistema contra incendios inactivo o presenta fugas.	T
30	Extintor vencido	4	Extintor vencido o descargado.	T
31	Paredes dañadas	5	\N	T
32	Techo con filtraciones	5	\N	T
33	Piso levantado	5	\N	T
34	Puerta desalineada	5	\N	T
35	Ventanas rotas	5	\N	T
36	Escaleras deterioradas	5	\N	T
37	Problemas estructurales en columnas	5	\N	T
38	Fachada con desprendimientos	5	\N	T
39	Baldosas sueltas	5	\N	T
40	Daño vial/peatonal	5	\N	T
41	Techo colapsado en área común	5	\N	T
42	Sillas rotas en aula	6	\N	T
43	Mesas inestables	6	\N	T
44	Archivadores dañados	6	\N	T
46	Pizarras deterioradas	6	\N	T
47	Estanterías oxidadas	6	\N	T
48	Escritorios rayados o sucios	6	\N	T
50	Cajones trabados	6	\N	T
51	Muebles de oficina desgastados	6	\N	T
52	Falta de material de limpieza	7	\N	T
53	Escasez de papel higiénico	7	\N	T
54	Sin bombillos en depósito	7	\N	T
55	Tinta de impresora agotada	7	\N	T
56	Sin repuestos para mantenimiento	7	\N	T
57	Faltan herramientas básicas	7	\N	T
58	Escasez de agua potable	7	\N	T
59	Desabastecimiento de insumos eléctricos	7	\N	T
60	Sin productos de higiene personal	7	\N	T
61	Faltan bolsas de basura	7	\N	T
62	Otros, especifique	7	\N	T
63	Computadora no enciende	8	\N	T
64	Problemas de conexión a internet	8	\N	T
65	Proyector no funciona	8	\N	T
66	Pantalla dañada	8	\N	T
67	Impresora no imprime	8	\N	T
68	Cable HDMI dañado	8	\N	T
69	Teclado o ratón sin funcionar	8	\N	T
70	Falla en punto de red del aula	8	\N	T
71	Otros	1	Describa otro tipo de falla eléctrica no listada.	T
72	Otros	2	Especifique otra falla relacionada con plomería no listada.	T
73	Otros	3	Especifique otra falla en equipos de servicios no listada.	T
74	Otros	4	Especifique otra falla de seguridad no listada.	T
75	Otros	5	\N	T
76	Otros	6	\N	T
77	Otros	7	\N	T
78	Otros	8	\N	T
\.

-- =========================================
-- AJUSTAR SECUENCIAS
-- =========================================

SELECT pg_catalog.setval('public.categorias_id_seq', 8, true);
SELECT pg_catalog.setval('public.fallas_id_seq', 78, true);

-- =========================================
-- CLAVES PRIMARIAS Y RELACIONES
-- =========================================

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT pk_categorias PRIMARY KEY (id);

ALTER TABLE ONLY public.fallas
    ADD CONSTRAINT pk_fallas PRIMARY KEY (id);

CREATE INDEX idx_categoria_id ON public.fallas USING btree (categoria_id);

ALTER TABLE ONLY public.fallas
    ADD CONSTRAINT fallas_ibfk_1 FOREIGN KEY (categoria_id)
    REFERENCES public.categorias(id);
