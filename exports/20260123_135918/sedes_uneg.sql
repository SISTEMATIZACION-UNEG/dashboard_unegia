--
-- PostgreSQL database dump
--

-- Comandos de SQL*Plus eliminados (\restrict y \unrestrict)
-- \restrict Fsm7FUQtrgFmfIAJcxedRBwWYPpiQsyh8HmhTmeykqNQIjEG7nndisUEWRdBPLC

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Comandos SET que no existen en PostgreSQL comentados o eliminados
SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
-- SET transaction_timeout = 0; -- eliminado
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';
SET default_table_access_method = heap;

--
-- Name: sedes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sedes (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    direccion character varying(255),
    ciudad character varying(100),
    estado character varying(100),
    latitud double precision,
    longitud double precision,
    trial873 character(1)
);

--
-- Name: sedes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sedes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: sedes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sedes_id_seq OWNED BY public.sedes.id;

--
-- Name: sedes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sedes ALTER COLUMN id SET DEFAULT nextval('public.sedes_id_seq'::regclass);

--
-- Data for Name: sedes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sedes (id, nombre, direccion, ciudad, estado, latitud, longitud, trial873) FROM stdin;
1	Sede Villa Asia	Av. Atlántico, Villa Asia	Puerto Ordaz	Bolívar	8.2824081	-62.7233477	T
9	Sede Villa Atlantico	Av. Atlántico	Puerto Ordaz	Bolívar	8.27059426457625	-62.73881615356316	T
10	Sede Upata	Av. Raúl Leoni, Sector Bicentenario	Upata	Bolívar	8.00177105525652	-62.39526770576182	T
11	Sede Ciudad Bolívar	Av. 17 de Diciembre, Sector La Sabanita	Ciudad Bolívar	Bolívar	8.13850620634075	-63.54108269124092	T
12	Sede El Callao	Calle Principal, Sector El Perú	El Callao	Bolívar	7.34694568930861	-61.83191456249324	T
13	Sede Santa Elena de Uairén	Av. Principal, Centro de Santa Elena de Uairén	Santa Elena de Uairén	Bolívar	4.5624040077146	-61.1188585751012	T
\.

--
-- Name: sedes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sedes_id_seq', 13, true);

--
-- Name: sedes pk_sedes; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sedes
    ADD CONSTRAINT pk_sedes PRIMARY KEY (id);

--
-- PostgreSQL database dump complete
--

-- \unrestrict Fsm7FUQtrgFmfIAJcxedRBwWYPpiQsyh8HmhTmeykqNQIjEG7nndisUEWRdBPLC
