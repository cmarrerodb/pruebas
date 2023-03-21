--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5
-- Dumped by pg_dump version 12.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: zlogistik_man; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA zlogistik_man;


ALTER SCHEMA zlogistik_man OWNER TO postgres;

--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: archivos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.archivos (
    id integer NOT NULL,
    archivo character varying(50) NOT NULL,
    descripcion text NOT NULL,
    activo smallint DEFAULT 1 NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion timestamp without time zone
);


ALTER TABLE public.archivos OWNER TO postgres;

--
-- Name: archivos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.archivos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.archivos_id_seq OWNER TO postgres;

--
-- Name: archivos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.archivos_id_seq OWNED BY public.archivos.id;


--
-- Name: cache; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cache (
    key character varying(191) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache OWNER TO postgres;

--
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cache_locks (
    key character varying(191) NOT NULL,
    owner character varying(191) NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache_locks OWNER TO postgres;

--
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    rut character varying(255),
    nombre_fantasia character varying(255),
    razon_social character varying(255),
    direccion text
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientes_id_seq OWNER TO postgres;

--
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(191) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: idiomas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.idiomas (
    id integer NOT NULL,
    idioma character varying(25) NOT NULL,
    abreviatura character(2) NOT NULL,
    activo smallint DEFAULT 1 NOT NULL,
    fecha_creacion timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion timestamp(6) without time zone
);


ALTER TABLE public.idiomas OWNER TO postgres;

--
-- Name: idiomas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.idiomas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.idiomas_id_seq OWNER TO postgres;

--
-- Name: idiomas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.idiomas_id_seq OWNED BY public.idiomas.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(191) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(191) NOT NULL,
    token character varying(191) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(191) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(191) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: traducciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.traducciones (
    id bigint NOT NULL,
    id_idioma bigint NOT NULL,
    expresion character varying(100) NOT NULL,
    traduccion text NOT NULL,
    ruta character varying(100),
    nombre_ruta character varying(30),
    activo smallint DEFAULT 1 NOT NULL,
    fecha_creacion timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion timestamp(6) without time zone,
    id_archivo bigint DEFAULT 1 NOT NULL
);


ALTER TABLE public.traducciones OWNER TO postgres;

--
-- Name: traducciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.traducciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.traducciones_id_seq OWNER TO postgres;

--
-- Name: traducciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.traducciones_id_seq OWNED BY public.traducciones.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    email character varying(191) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(191) NOT NULL,
    avatar text NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: archivos; Type: TABLE; Schema: zlogistik_man; Owner: postgres
--

CREATE TABLE zlogistik_man.archivos (
    id integer NOT NULL,
    archivo character varying(50) NOT NULL,
    descripcion text NOT NULL,
    activo smallint DEFAULT 1 NOT NULL,
    fecha_creacion timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion timestamp(6) without time zone
);


ALTER TABLE zlogistik_man.archivos OWNER TO postgres;

--
-- Name: archivos_id_seq; Type: SEQUENCE; Schema: zlogistik_man; Owner: postgres
--

CREATE SEQUENCE zlogistik_man.archivos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE zlogistik_man.archivos_id_seq OWNER TO postgres;

--
-- Name: archivos_id_seq; Type: SEQUENCE OWNED BY; Schema: zlogistik_man; Owner: postgres
--

ALTER SEQUENCE zlogistik_man.archivos_id_seq OWNED BY zlogistik_man.archivos.id;


--
-- Name: cache; Type: TABLE; Schema: zlogistik_man; Owner: postgres
--

CREATE TABLE zlogistik_man.cache (
    key character varying(191) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE zlogistik_man.cache OWNER TO postgres;

--
-- Name: cache_locks; Type: TABLE; Schema: zlogistik_man; Owner: postgres
--

CREATE TABLE zlogistik_man.cache_locks (
    key character varying(191) NOT NULL,
    owner character varying(191) NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE zlogistik_man.cache_locks OWNER TO postgres;

--
-- Name: clientes; Type: TABLE; Schema: zlogistik_man; Owner: postgres
--

CREATE TABLE zlogistik_man.clientes (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    rut character varying(255),
    nombre_fantasia character varying(255),
    razon_social character varying(255),
    direccion text
);


ALTER TABLE zlogistik_man.clientes OWNER TO postgres;

--
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: zlogistik_man; Owner: postgres
--

CREATE SEQUENCE zlogistik_man.clientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE zlogistik_man.clientes_id_seq OWNER TO postgres;

--
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: zlogistik_man; Owner: postgres
--

ALTER SEQUENCE zlogistik_man.clientes_id_seq OWNED BY zlogistik_man.clientes.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: zlogistik_man; Owner: postgres
--

CREATE TABLE zlogistik_man.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(191) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE zlogistik_man.failed_jobs OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: zlogistik_man; Owner: postgres
--

CREATE SEQUENCE zlogistik_man.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE zlogistik_man.failed_jobs_id_seq OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: zlogistik_man; Owner: postgres
--

ALTER SEQUENCE zlogistik_man.failed_jobs_id_seq OWNED BY zlogistik_man.failed_jobs.id;


--
-- Name: idiomas; Type: TABLE; Schema: zlogistik_man; Owner: postgres
--

CREATE TABLE zlogistik_man.idiomas (
    id integer NOT NULL,
    idioma character varying(25) NOT NULL,
    abreviatura character(2) NOT NULL,
    activo smallint DEFAULT 1 NOT NULL,
    fecha_creacion timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion timestamp(6) without time zone
);


ALTER TABLE zlogistik_man.idiomas OWNER TO postgres;

--
-- Name: idiomas_id_seq; Type: SEQUENCE; Schema: zlogistik_man; Owner: postgres
--

CREATE SEQUENCE zlogistik_man.idiomas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE zlogistik_man.idiomas_id_seq OWNER TO postgres;

--
-- Name: idiomas_id_seq; Type: SEQUENCE OWNED BY; Schema: zlogistik_man; Owner: postgres
--

ALTER SEQUENCE zlogistik_man.idiomas_id_seq OWNED BY zlogistik_man.idiomas.id;


--
-- Name: migrations; Type: TABLE; Schema: zlogistik_man; Owner: postgres
--

CREATE TABLE zlogistik_man.migrations (
    id integer NOT NULL,
    migration character varying(191) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE zlogistik_man.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: zlogistik_man; Owner: postgres
--

CREATE SEQUENCE zlogistik_man.migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE zlogistik_man.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: zlogistik_man; Owner: postgres
--

ALTER SEQUENCE zlogistik_man.migrations_id_seq OWNED BY zlogistik_man.migrations.id;


--
-- Name: password_resets; Type: TABLE; Schema: zlogistik_man; Owner: postgres
--

CREATE TABLE zlogistik_man.password_resets (
    email character varying(191) NOT NULL,
    token character varying(191) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE zlogistik_man.password_resets OWNER TO postgres;

--
-- Name: personal_access_tokens; Type: TABLE; Schema: zlogistik_man; Owner: postgres
--

CREATE TABLE zlogistik_man.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(191) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(191) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE zlogistik_man.personal_access_tokens OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: zlogistik_man; Owner: postgres
--

CREATE SEQUENCE zlogistik_man.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE zlogistik_man.personal_access_tokens_id_seq OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: zlogistik_man; Owner: postgres
--

ALTER SEQUENCE zlogistik_man.personal_access_tokens_id_seq OWNED BY zlogistik_man.personal_access_tokens.id;


--
-- Name: traducciones; Type: TABLE; Schema: zlogistik_man; Owner: postgres
--

CREATE TABLE zlogistik_man.traducciones (
    id bigint NOT NULL,
    id_idioma bigint NOT NULL,
    expresion character varying(100) NOT NULL,
    traduccion text NOT NULL,
    ruta character varying(100),
    nombre_ruta character varying(30),
    activo smallint DEFAULT 1 NOT NULL,
    fecha_creacion timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion timestamp(6) without time zone,
    id_archivo bigint DEFAULT 1 NOT NULL
);


ALTER TABLE zlogistik_man.traducciones OWNER TO postgres;

--
-- Name: traducciones_id_seq; Type: SEQUENCE; Schema: zlogistik_man; Owner: postgres
--

CREATE SEQUENCE zlogistik_man.traducciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE zlogistik_man.traducciones_id_seq OWNER TO postgres;

--
-- Name: traducciones_id_seq; Type: SEQUENCE OWNED BY; Schema: zlogistik_man; Owner: postgres
--

ALTER SEQUENCE zlogistik_man.traducciones_id_seq OWNED BY zlogistik_man.traducciones.id;


--
-- Name: users; Type: TABLE; Schema: zlogistik_man; Owner: postgres
--

CREATE TABLE zlogistik_man.users (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    email character varying(191) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(191) NOT NULL,
    avatar text NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE zlogistik_man.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: zlogistik_man; Owner: postgres
--

CREATE SEQUENCE zlogistik_man.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE zlogistik_man.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: zlogistik_man; Owner: postgres
--

ALTER SEQUENCE zlogistik_man.users_id_seq OWNED BY zlogistik_man.users.id;


--
-- Name: archivos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archivos ALTER COLUMN id SET DEFAULT nextval('public.archivos_id_seq'::regclass);


--
-- Name: idiomas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.idiomas ALTER COLUMN id SET DEFAULT nextval('public.idiomas_id_seq'::regclass);


--
-- Name: traducciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.traducciones ALTER COLUMN id SET DEFAULT nextval('public.traducciones_id_seq'::regclass);


--
-- Name: archivos id; Type: DEFAULT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.archivos ALTER COLUMN id SET DEFAULT nextval('zlogistik_man.archivos_id_seq'::regclass);


--
-- Name: idiomas id; Type: DEFAULT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.idiomas ALTER COLUMN id SET DEFAULT nextval('zlogistik_man.idiomas_id_seq'::regclass);


--
-- Name: traducciones id; Type: DEFAULT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.traducciones ALTER COLUMN id SET DEFAULT nextval('zlogistik_man.traducciones_id_seq'::regclass);


--
-- Data for Name: archivos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.archivos (id, archivo, descripcion, activo, fecha_creacion, fecha_modificacion) FROM stdin;
1	auth.php	Mensajes para la autenticación del usuario	1	2022-12-21 13:58:19.467838	\N
2	pagination.php	Mensajes de la libreria del paginador	1	2022-12-21 13:59:22.885757	\N
3	passwords.php	Mensajes de fallas de autenticación relacionados con la clave	1	2022-12-21 14:00:48.660005	\N
4	translation.php	Etiquetas de la interfaz de usuarios	1	2022-12-21 14:01:49.745206	\N
5	validation.php	Mensajes de las reglas de validación	1	2022-12-21 14:02:22.809276	\N
\.


--
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache (key, value, expiration) FROM stdin;
\.


--
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache_locks (key, owner, expiration) FROM stdin;
\.


--
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id, created_at, updated_at, rut, nombre_fantasia, razon_social, direccion) FROM stdin;
1	2022-12-07 17:05:25	2022-12-13 01:01:37	11254785-9	Cliente	Razón Social del cliente	Av 1, edificio 1, piso 1, oficina 1
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: idiomas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.idiomas (id, idioma, abreviatura, activo, fecha_creacion, fecha_modificacion) FROM stdin;
2	ESPAÑOL	es	1	2022-12-18 03:41:35.235415	\N
1	ENGLISH	en	1	2022-12-17 10:01:59.787579	\N
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
5	2022_12_16_224353_create_clientes_table	0
6	2022_12_16_224353_create_traducciones_table	0
7	2022_12_16_224353_create_idiomas_table	0
8	2022_12_16_224354_add_foreign_keys_to_traducciones_table	0
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: traducciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.traducciones (id, id_idioma, expresion, traduccion, ruta, nombre_ruta, activo, fecha_creacion, fecha_modificacion, id_archivo) FROM stdin;
2	1	3_min_ago	3 min ago	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
186	1	Topbar_Light	Topbar Light	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
187	1	TUI_Calendar	TUI Calendar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
276	2	Menu	Menú	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
450	2	Edit_Details	Editar detalles	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
452	2	Toasts	Toasts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
537	2	Translations	Traducciones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
538	2	Language_admin	Administración de Idiomas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
539	2	Language_full	Idioma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
3	1	Add_Product	Add Product	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
4	1	Advanced_Plugins	 Advanced Plugins	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
5	1	Advanced_Table	 Advanced Tables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
6	1	Alert_Email	Alert Email	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
7	1	Alerts	Alerts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
8	1	Apex_Charts	Apexcharts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
9	1	Applications	Applications	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
10	1	Apps	Apps	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
11	1	As_a_skeptical_Cambridge_friend_of_mine_occidental	As a skeptical Cambridge friend of mine occidental.	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
12	1	Authentication	Authentication	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
13	1	Basic_Action	Basic Action	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
14	1	Basic_Elements	Basic Elements	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
15	1	Billing_Email	Billing Email	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
16	1	Blog_Details	Blog Details	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
17	1	Blog_Grid	Blog Grid	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
18	1	Blog_List	Blog List	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
19	1	Blog	Blog	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
20	1	Blog	Blog	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
21	1	Bootstrap_Basic_Tables	Bootstrap Basic Tables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
22	1	Bootstrap_Basic	Bootstrap Basic	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
23	1	Basic_Tables	Basic Tables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
24	1	Bootstrap	Bootstrap	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
25	1	Boxed_Width	Boxed Width	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
26	1	Boxed_Width	Boxed Width	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
27	1	Boxicons	Boxicons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
540	2	Language_abbr	Abreviatura	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
541	2	Language_act	Activo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
542	2	Language_add	Crear idioma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
543	2	Language_edit	Editar idioma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
544	2	Language_created	Se ha creado el idioma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
545	2	Language_updated	Se ha actualizado el idioma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
546	2	Language_deleted	Se ha eliminado el idioma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
547	2	Translation_expression	Expresión	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
548	2	Translation_traduction	Traducción	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
549	2	Translation_admin	Administración de Traducciones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
28	1	Boxicons	Boxicons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
29	1	Buttons	Buttons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
30	1	Buy_Sell	Buy/Sell	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
31	1	Calendars	Calendar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
32	1	Cards	Cards	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
33	1	Carousel	Carousel	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
34	1	Cart	Cart	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
35	1	Chartjs_Charts	Chartjs	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
36	1	Chartjs	Chartjs	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
37	1	Charts	Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
38	1	Chat	Chat	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
39	1	Checkout	Checkout	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
40	1	Colored_Header	Colored Header	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
41	1	Colored_Sidebar	Colored Sidebar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
42	1	Colors	Colors	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
43	1	Coming_Soon	Coming Soon	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
44	1	Compact_Sidebar	Compact Sidebar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
45	1	Components	Components	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
46	1	Confirm_Mail	Confirm Mail	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
47	1	Contacts	Contacts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
48	1	Create_New	Create New	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
49	1	Create_Task	Create Task	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
50	1	Crypto	Crypto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
51	1	Crypto	Crypto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
52	1	Customers	Customers	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
53	1	Dashboards	Dashboard	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
54	1	Data_Tables	DataTables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
55	1	Default	Default	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
56	1	Dripicons	Dripicons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
57	1	Dropdowns	Dropdowns	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
58	1	E_Charts	Echarts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
59	1	Echarts	Echarts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
60	1	Ecommerce	Ecommerce	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
61	1	Edit_Details	Edit Details	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
62	1	Editable_Table	Editable Tables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
63	1	Editable	Editable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
64	1	Editors	Editors	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
65	1	Elements	Elements	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
66	1	Email_verification	Email Verification	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
67	1	Email	Email	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
68	1	Error_404	Error 404	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
69	1	Error_500	Error 500	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
70	1	Exchange	Exchange	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
71	1	Extended	Extended	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
72	1	Extra_Pages	Extra Pages	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
73	1	FAQs	FAQs	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
74	1	Feather	Feather	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
75	1	File_Manager	File Manager	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
76	1	File_Upload	File Upload	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
77	1	Flot_Charts	Flot Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
78	1	Font_awesome	Font Awesome	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
79	1	Form_Advanced	Form Advanced	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
80	1	Form_Editors	Form Editors	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
81	1	Form_Elements	Form Elements	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
82	1	Form_File_Upload	Form File Upload	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
83	1	Form_Layouts	Form Layouts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
84	1	Form_Mask	Form Mask	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
85	1	Form_Repeater	Form Repeater	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
86	1	Form_Validation	Form Validation	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
87	1	Form_Wizard	Form Wizard	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
88	1	Form_Xeditable	Form Xeditable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
89	1	Forms_Advanced_Plugins	Form Advanced Plugins	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
90	1	Forms	Forms	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
91	1	Full_Calendar	Full Calendar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
92	1	General	General	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
93	1	Google_Maps	Google Maps	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
94	1	Google	Google	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
95	1	Google	Google	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
96	1	Grid	Grid	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
97	1	Horizontal_layout	Horizontal layout	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
98	1	Horizontal	Horizontal	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
99	1	ICO_Landing	ICO Landing	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
100	1	Icon_Sidebar	Icon Sidebar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
101	1	Icons	Icons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
102	1	Icons	Icons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
103	1	If_several_languages_coalesce_the_grammar	If several languages coalesce the grammar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
104	1	Images	Images	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
105	1	Inbox	Inbox	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
106	1	Invoice_Detail	Invoice Detail	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
107	1	Invoice_List	Invoice List	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
108	1	Invoices	Invoices	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
109	1	It_will_seem_like_simplified_English	It will seem like simplified English.	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
110	1	James_Lemire	James Lemire	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
111	1	Jquery_Knob_Charts	Jquery Knob	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
112	1	Jquery_Knob	Jquery Knob	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
113	1	Kanban_Board	Kanban Board	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
114	1	KYC_Application	KYC Application	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
115	1	Layouts	Layouts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
116	1	Leaflet_Maps	Leaflet Maps	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
117	1	Leaflet	Leaflet 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
118	1	Leaflet	Leaflet	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
119	1	Lending	Lending	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
120	1	Level_1.1	Level 1.1	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
121	1	Level_1.2	Level 1.2	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
122	1	Level_2.1	Level 2.1	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
123	1	Level_2.2	Level 2.2	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
124	1	Light_Sidebar	Light Sidebar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
125	1	Lightbox	Lightbox	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
126	1	Lock_screen	Lock screen	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
127	1	Lock_Screen	Lock Screen	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
128	1	Login	Login	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
129	1	Logout	Log Out	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
130	1	Maintenance	Maintenance	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
131	1	Maps	Maps	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
132	1	Mask	Mask	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
133	1	Material_Design	Material Design	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
134	1	Material_Design	Material Design	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
135	1	Mega_Menu	Mega Menu	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
136	1	Menu	Menu	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
137	1	Modals	Modals	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
138	1	Multi_Level	Multi Level	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
139	1	My_Wallet	My Wallet	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
140	1	New	New	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
141	1	Notifications	Notifications	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
142	1	Offcanvas	Offcanvas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
143	1	Orders	Orders	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
144	1	Orders	Orders	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
145	1	Pages	Pages	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
146	1	Placeholders	Placeholders	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
147	1	Preloader	Preloader	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
148	1	Preloader	Preloader	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
149	1	Pricing	Pricing	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
150	1	Product_Detail	Product Detail	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
151	1	Products	Products	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
152	1	Profile	Profile	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
153	1	Profile	Profile	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
154	1	Progress_Bars	Progress Bars	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
155	1	Project_Overview	Project Overview	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
156	1	Projects_Grid	Projects Grid	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
157	1	Projects_List	Projects List	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
158	1	Projects	Projects	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
159	1	Range_Slider	Range Slider	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
160	1	Rating	Rating	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
161	1	Read_Email	Read Email	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
162	1	Recover_Password	Recover Password	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
163	1	Register	Register	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
164	1	Responsive_Table	Responsive Tables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
165	1	Responsive	Responsive	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
166	1	Saas	Saas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
167	1	Salena_Layfield	Salena Layfield	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
168	1	Scrollable	Scrollable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
169	1	Scrollable	Scrollable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
170	1	Search	Search...	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
171	1	Session_Timeout	Session Timeout	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
172	1	Settings	Settings	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
173	1	Shops	Shops	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
174	1	Sparkline_Charts	Sparkline Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
175	1	Sparkline	Sparkline	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
176	1	Starter_Page	Starter Page	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
177	1	Sweet_Alert	SweetAlert	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
178	1	Tables	Tables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
179	1	Tabs_&_Accordions	Tabs & Accordions	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
180	1	Task_List	Task List	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
181	1	Tasks	Tasks	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
182	1	Templates	Templates	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
183	1	Timeline	Timeline	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
184	1	Toast_UI_Charts	Toast UI Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
185	1	Toasts	Toasts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
188	1	Two_step_verification	Two Step Verification	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
189	1	Typography	Typography	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
190	1	UI_Components	UI Components	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
191	1	UI_Elements	UI Elements	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
192	1	User_Grid	User Grid	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
193	1	User_List	User List	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
194	1	Utility	Utility	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
195	1	Validation	Validation	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
196	1	Vector_Maps	Vector Maps	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
197	1	Vector	Vector 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
198	1	Video	Video	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
199	1	View_All	View All	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
200	1	View_More	View More..	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
201	1	Wallet	Wallet	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
202	1	Wizard	Wizard	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
203	1	Your_item_is_shipped	Your item is shipped	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
204	1	Your_order_is_placed	Your order is placed	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
205	1	Line_Charts	Line Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
206	1	Line	Line	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
207	1	Area	Area	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
208	1	Area_Charts	Area Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
209	1	Column_Chart	Column Chart	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
210	1	Column	Column 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
211	1	Mixed	Mixed	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
212	1	Mixed_Chart	Mixed Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
213	1	Timeline	Timeline	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
214	1	Timeline_Charts	Timeline Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
215	1	Candlestick	Candlestick	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
216	1	Candlestick_Charts	Candlestick Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
217	1	Boxplot	Boxplot	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
218	1	Boxplot_Charts	Boxplot Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
219	1	Bubble	Bubble	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
220	1	Bubble_Charts	Bubble Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
221	1	Scatter	Scatter	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
222	1	Scatter_Charts	Scatter Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
223	1	Heatmap	Heatmap	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
224	1	Heatmap_Charts	Heatmap Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
225	1	Treemap_Charts	Treemap Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
226	1	Treemap	Treemap 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
227	1	Pie_Charts	Pie Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
228	1	Pie	Pie 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
229	1	Radialbar_Charts	Radiabar Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
230	1	Radialbar	Radialbar 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
231	1	Radar_Charts	Radar Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
232	1	Radar	Radar 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
233	1	Polararea_Charts	Polararea Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
234	1	Polararea	Polararea 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
235	1	Bar	Bar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
236	1	Bar_Charts	Bar Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
237	1	Eva_Icons	Eva Icons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
238	1	Client_menu	Clients (new)	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
239	1	Client_created	Client has been created	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
240	1	Client_updated	Client has been updated	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
241	1	Client_deleted	Client has been deleted	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
242	1	Client_admin	Client Administration	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
243	1	Client_fantasy	Fantasy name	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
244	1	Client_name	Client name	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
245	1	Client_address	Address	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
246	1	Client_add	Create client	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
247	1	Client_edit	Update client	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
248	1	Actions	Actions	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
249	1	Actions_add	Add	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
250	1	Actions_edit	Edit	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
251	1	Actions_update	Update	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
252	1	Actions_delete	Delete	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
253	1	Confirm_delete_title	Are you shure you want to delete this record?	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
254	1	Confirm_delete_text	This action cant be reverted	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
255	1	Confirm_delete_button	Delete	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
256	1	Confirm_cancel_button	Cancel	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
257	1	Show_confirm_deleted_title	Record deleted	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
259	1	Multilingual	Multilingual	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
260	1	Languages	Languages	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
261	1	Translations	Translations	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
262	1	Language_admin	Language Administration	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
263	1	Language_full	Language	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
264	1	Language_abbr	Abbreviation	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
265	1	Language_act	Active	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
266	1	Language_add	Create language	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
267	1	Language_edit	Edit language	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
268	1	Language_created	Language has been created	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
269	1	Language_updated	Language has been updated	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
270	1	Language_deleted	Language has been deleted	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
271	1	Translation_expression	Expression	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
272	1	Translation_traduction	Traduction	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
273	1	Translation_admin	Traductions Administration	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
275	1	Translation_edit	Edit traduction	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
277	2	Dashboards	Tablero	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
278	2	Default	Defecto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
279	2	Saas	Saas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
280	2	Crypto	Cripto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
281	2	Blog	Blog	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
282	2	Layouts	Diseños	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
283	2	Vertical	Vertical	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
284	2	Light_Sidebar	Barra lateral ligera	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
285	2	Compact_Sidebar	Barra lateral compacta	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
286	2	Icon_Sidebar	Barra lateral de iconos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
287	2	Boxed_Width	Ancho en caja	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
288	2	Preloader	Precargador	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
289	2	Colored_Sidebar	Barra lateral coloreada	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
290	2	Scrollable	Desplazable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
291	2	Horizontal	Horizontal	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
292	2	Topbar_Light	Barra superior ligera	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
293	2	Boxed_Width	Ancho en caja	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
294	2	Preloader	Precargador	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
295	2	Colored_Header	Encabezado de color	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
296	2	Scrollable	Desplazable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
297	2	Apps	Aplicaciones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
298	2	Calendars	Calendarios	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
299	2	TUI_Calendar	Calendario TUI	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
300	2	Full_Calendar	Calendario completo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
301	2	Chat	Chat	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
302	2	New	Nuevo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
303	2	File_Manager	Administrador de archivos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
304	2	Ecommerce	Comercio electrónico	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
305	2	Products	Productos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
306	2	Product_Detail	Detalle del producto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
307	2	Orders	Pedidos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
308	2	Customers	Clientes	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
309	2	Cart	Carro	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
310	2	Checkout	Revisión	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
311	2	Shops	Tiendas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
312	2	Add_Product	Agregar producto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
313	2	Crypto	Cripto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
314	2	Wallet	Billetera	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
315	2	Buy_Sell	Compra venta	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
316	2	Exchange	Intercambiar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
317	2	Lending	Préstamo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
318	2	Orders	Pedidos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
319	2	KYC_Application	Aplicación KYC	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
320	2	ICO_Landing	Aterrizaje de ICO	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
321	2	Email	Email	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
322	2	Inbox	Bandeja de entrada	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
323	2	Read_Email	Leer el correo electrónico	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
324	2	Templates	Plantillas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
325	2	Basic_Action	Acción básica	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
326	2	Alert_Email	Correo electrónico de alerta	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
327	2	Billing_Email	Correo Electrónico de Facturación	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
328	2	Invoices	Facturas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
329	2	Invoice_List	Lista de facturas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
330	2	Invoice_Detail	Detalle de la factura	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
331	2	Projects	Proyectos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
332	2	Projects_Grid	Cuadrícula de proyectos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
333	2	Projects_List	Lista de proyectos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
334	2	Project_Overview	Descripción del proyecto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
335	2	Create_New	Crear nuevo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
336	2	Tasks	Tareas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
337	2	Task_List	Lista de tareas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
338	2	Kanban_Board	Tablero Kanban	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
339	2	Create_Task	Crear tarea	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
340	2	Contacts	Contactos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
341	2	User_Grid	Cuadrícula de usuario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
342	2	User_List	Lista de usuarios	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
343	2	Profile	Perfil	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
344	2	Blog	Blog	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
345	2	Blog_List	Lista de blogs	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
346	2	Blog_Grid	Blog Grid	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
347	2	Blog_Details	Detalles del blog	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
348	2	Pages	Páginas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
349	2	Authentication	Autenticación	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
350	2	Login	Iniciar sesión	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
351	2	Register	Registrarse	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
352	2	Recover_Password	Recuperar contraseña	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
353	2	Lock_Screen	Bloquear pantalla	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
354	2	Confirm_Mail	Confirmar correo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
355	2	Email_verification	Verificacion de email	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
356	2	Two_step_verification	Verificación de dos pasos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
357	2	Utility	Utilidad	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
358	2	Starter_Page	Página de inicio	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
359	2	Maintenance	Mantenimiento	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
360	2	Coming_Soon	Próximamente	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
361	2	Timeline	Cronología	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
362	2	FAQs	Preguntas frecuentes	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
363	2	Pricing	Precios	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
364	2	Error_404	Error 404	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
365	2	Error_500	Error 500	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
366	2	Components	Componentes	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
367	2	UI_Elements	Elementos de la interfaz de usuario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
368	2	Alerts	Alertas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
369	2	Buttons	Botones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
370	2	Cards	Tarjetas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
371	2	Carousel	Carrusel	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
372	2	Dropdowns	Listas deplegables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
373	2	Grid	Cuadrícula	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
374	2	Images	Imagenes	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
375	2	Lightbox	Caja ligera	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
376	2	Modals	Modales	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
377	2	Offcanvas	Fuera del lienzo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
378	2	Range_Slider	Control deslizante	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
379	2	Session_Timeout	Hora de término de la sesión	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
380	2	Progress_Bars	Barras de progreso	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
381	2	Sweet_Alert	Alerta Avanzada	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
382	2	Tabs_&_Accordions	Pestañas y acordeones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
383	2	Typography	Tipografía	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
384	2	Video	Vídeo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
385	2	General	General	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
386	2	Colors	Colores	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
387	2	Rating	Clasificación	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
388	2	Notifications	Notificaciones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
389	2	Forms	Formularios	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
390	2	Form_Elements	Elementos de formulario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
391	2	Form_Layouts	Diseños de formulario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
392	2	Form_Validation	Validación de formulario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
393	2	Form_Advanced	Formulario avanzado	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
394	2	Form_Editors	Editores de formularios	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
395	2	Form_File_Upload	Carga de archivo de formulario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
396	2	Form_Xeditable	Formulario Xeditable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
397	2	Form_Repeater	Repetidor de formulario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
398	2	Form_Wizard	Asistente de formulario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
399	2	Form_Mask	Máscara de forma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
400	2	Tables	Tablas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
401	2	Basic_Tables	Tablas básicas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
402	2	Data_Tables	Tablas de datos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
403	2	Responsive_Table	Tabla responsiva	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
404	2	Responsive	 Responsiva	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
405	2	Editable_Table	Tabla editable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
406	2	Charts	Gráficos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
407	2	Apex_Charts	Gráficos de Apex	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
408	2	E_Charts	Gráficos E	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
409	2	Chartjs_Charts	Gráficos de Chartjs	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
410	2	Flot_Charts	Gráficos de Flot	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
411	2	Toast_UI_Charts	Gráficos de interfaz de usuario de Toast	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
412	2	Jquery_Knob_Charts	perillas de Jquery	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
413	2	Sparkline_Charts	Minigráficos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
414	2	Icons	Iconos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
415	2	Boxicons	Boxicones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
416	2	Material_Design	Material Design	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
417	2	Dripicons	Dripicons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
418	2	Font_awesome	Font Awesome	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
419	2	Maps	Mapas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
420	2	Google	 Google	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
421	2	Vector	 vectoriales	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
422	2	Leaflet	 Leaflet	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
423	2	Multi_Level	Multi nivel	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
424	2	Level_1.1	Nivel 1.1	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
425	2	Level_1.2	Nivel 1.2	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
426	2	Level_2.1	Nivel 2.1	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
427	2	Level_2.2	Nivel 2.2	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
428	2	Search	Buscar...	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
429	2	Mega_Menu	Mega menú	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
430	2	UI_Components	Componentes de UI	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
431	2	Applications	Aplicaciones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
432	2	Extra_Pages	Páginas extra	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
433	2	Horizontal_layout	Disposición horizontal	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
434	2	View_All	Ver todo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
435	2	Your_order_is_placed	Se realiza tu pedido	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
436	2	If_several_languages_coalesce_the_grammar	Si varios idiomas fusionan la gramática	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
437	2	3_min_ago	Hace 3 minutos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
438	2	James_Lemire	James Lemire	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
439	2	It_will_seem_like_simplified_English	Parecerá inglés simplificado.	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
440	2	1_hours_ago	Hace 1 hora	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
441	2	Your_item_is_shipped	El artículo ha sido enviado	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
442	2	Salena_Layfield	Salena Layfield	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
443	2	As_a_skeptical_Cambridge_friend_of_mine_occidental	Como escéptico amigo mío occidental de Cambridge.	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
444	2	View_More	Ver más..	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
445	2	Profile	Perfil	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
446	2	My_Wallet	Mi billetera	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
447	2	Settings	Configuraciones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
448	2	Lock_screen	Bloquear pantalla	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
449	2	Logout	Cerrar sesión	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
451	2	Placeholders	Marcadores de posición	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
453	2	Bootstrap	Bootstrap	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
454	2	Extended	Extendido	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
455	2	Basic_Elements	Elementos basicos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
456	2	Validation	Validación	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
457	2	Forms_Advanced_Plugins	Formularios con Complementos Avanzados	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
458	2	Advanced_Plugins	 Complementos avanzados	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
459	2	Editors	Editores	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
460	2	File_Upload	Subir archivo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
461	2	Wizard	Asistente	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
462	2	Mask	Máscara	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
463	2	Editable	Editable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
464	2	Echarts	Echarts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
465	2	Chartjs	Chartjs	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
466	2	Jquery Knob	Perilla Jquery	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
467	2	Sparkline	Minigráfico	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
468	2	Icons	Iconos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
469	2	Feather	Pluma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
470	2	Boxicons	Boxicones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
471	2	Material Design	Diseño de materiales	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
472	2	Google	Google	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
473	2	Vector	Vector	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
474	2	Leaflet	Leaflet	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
475	2	Elements	Elementos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
476	2	Google_Maps	mapas de Google	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
477	2	Vector_Maps	Mapas vectoriales	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
478	2	Leaflet_Maps	Mapas de Leaflet	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
479	2	Bootstrap_Basic_Tables	Tablas Bootstrap Básicas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
480	2	Advanced_Table	Tabla avanzada	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
481	2	Line_Charts	Gráficos de líneas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
482	2	Line	Gráficos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
483	2	Area	área	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
484	2	Area_Charts	Gráficos de área	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
485	2	Column_Chart	Columna	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
486	2	Column	Gráfico de columnas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
487	2	Mixed	Mezclado	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
488	2	Mixed_Chart	Gráfico mixto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
489	2	Timeline	Cronología	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
490	2	Timeline_Charts	Gráfico de línea de tiempo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
491	2	Candlestick	Candelero	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
492	2	Candlestick_Charts	Gráfico de velas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
493	2	Boxplot	diagrama de caja	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
494	2	Boxplot_Charts	Gráfico de diagrama de caja	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
495	2	Bubble	Burbuja	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
496	2	Bubble_Charts	Gráfico de burbujas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
497	2	Scatter	Dispersión	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
498	2	Scatter_Charts	Gráfico de dispersión	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
499	2	Heatmap	Mapa de calor	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
500	2	Heatmap_Charts	Gráfico de mapa de calor	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
501	2	Treemap_Charts	Mapa de árbol	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
502	2	Treemap	Gráfico de mapa de árbol	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
503	2	Pie_Charts	Tarta	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
504	2	Pie	Gráfico circular	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
505	2	Radialbar_Charts	barra radial	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
506	2	Radialbar	Gráfico de barras radiales	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
507	2	Radar_Charts	Radar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
508	2	Radar	Carta de radar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
509	2	Polararea_Charts	área polar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
510	2	Polararea	Gráfico de área polar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
511	2	Bar	bar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
512	2	Bar_Charts	gráficos de efectivo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
513	2	Eva_Icons	Eva_Iconos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
514	2	Client_menu	Clientes (nuevo)	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
515	2	Client_created	Se ha creado el cliente	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
516	2	Client_updated	Se ha actualizado el cliente	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
517	2	Client_deleted	El cliente ha sido eliminado	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
518	2	Client_admin	Administración de clientes	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
519	2	Client_fantasy	Nombre Fantasía	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
520	2	Client_name	Razón social	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
521	2	Client_address	Dirección	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
522	2	Client_add	Crear cliente	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
523	2	Client_edit	Editar cliente	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
524	2	Actions	Acciones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
525	2	Actions_add	Agregar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
526	2	Actions_edit	Editar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
527	2	Actions_update	Actualizar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
528	2	Actions_delete	Borrar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
529	2	Confirm_delete_title	¿Está seguro de que desea eliminar este registro?	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
530	2	Confirm_delete_text	Esta acción no puede deshacerse	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
531	2	Confirm_delete_button	Eliminar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
532	2	Confirm_cancel_button	Cancelar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
533	2	Show_confirm_deleted_title	Registro eliminado	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
535	2	Multilingual	Multilenguaje	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
536	2	Languages	Idiomas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
550	2	Translation_add	Crear traducción	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
551	2	Translation_edit	Editar traducción	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
552	1	Translation_generate	Generate translations	\N	\N	1	2022-12-19 16:31:44.401387	\N	4
1	1	1_hours_ago	1 hours ago	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
534	2	Show_Confirm_deleted_text	El registro ha sido eliminado exitosamente; recuerde generar el archivo de idiomas para que los cambios tengan efecto.	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
258	1	Show_Confirm_deleted_text	The record has been successfully deleted; remember to generate the language file for the changes to take effect.	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
557	1	Translation_file_generated_title	Translation file generated	\N	\N	1	2022-12-20 14:44:26.780842	\N	4
558	1	Translation_file_generated_text	Translation file has been successfully generated	\N	\N	1	2022-12-20 14:45:05.815561	\N	4
559	1	TransFile_admin	Translation Files Administration	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
560	1	TransFile_created	Translation file has been created	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
561	1	TransFile_updated	Translation file has been updated	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
562	1	TransFile_deleted	Create Translate file	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
564	2	TransFile_admin	Administraciónn de Archivos de Traducción	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
565	2	TransFile_created	Se ha creado el archivo de traducción	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
566	2	TransFile_updated	Se ha actualizado el archivo de traducción	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
567	2	TransFile_deleted	Crear archivo de traducción	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
568	2	TransFile_add	Editar archivo de traducción	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
569	1	TransFile	Files	\N	\N	1	2022-12-21 09:02:13.551377	\N	4
570	2	TransFile	Archivos	\N	\N	1	2022-12-21 09:02:28.240608	\N	4
571	1	Translation_add	Add translation	\N	\N	1	2022-12-21 09:32:17.231024	\N	4
572	1	TransFile_file	File	\N	\N	1	2022-12-21 09:32:55.159685	\N	4
573	2	TransFile_description	Description	\N	\N	1	2022-12-21 09:33:51.54794	\N	4
574	1	TransFile_description	Description	\N	\N	1	2022-12-21 09:36:01.000406	\N	4
563	1	TransFile_add	Add translation file	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, avatar, remember_token, created_at, updated_at) FROM stdin;
1	admin	admin@themesbrand.com	\N	$2y$10$W9Q/ZguP2p6X/ducK5GVzOBv2TIsqVhX481tKR6/Wc1PjmDgjnCje	avatar-1.jpg	\N	2022-12-08 12:16:47	2022-12-08 12:16:47
\.


--
-- Data for Name: archivos; Type: TABLE DATA; Schema: zlogistik_man; Owner: postgres
--

COPY zlogistik_man.archivos (id, archivo, descripcion, activo, fecha_creacion, fecha_modificacion) FROM stdin;
1	auth.php	Mensajes para la autenticación del usuario	1	2022-12-21 13:58:19.467838	\N
2	pagination.php	Mensajes de la libreria del paginador	1	2022-12-21 13:59:22.885757	\N
3	passwords.php	Mensajes de fallas de autenticación relacionados con la clave	1	2022-12-21 14:00:48.660005	\N
4	translation.php	Etiquetas de la interfaz de usuarios	1	2022-12-21 14:01:49.745206	\N
5	validation.php	Mensajes de las reglas de validación	1	2022-12-21 14:02:22.809276	\N
\.


--
-- Data for Name: cache; Type: TABLE DATA; Schema: zlogistik_man; Owner: postgres
--

COPY zlogistik_man.cache (key, value, expiration) FROM stdin;
\.


--
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: zlogistik_man; Owner: postgres
--

COPY zlogistik_man.cache_locks (key, owner, expiration) FROM stdin;
\.


--
-- Data for Name: clientes; Type: TABLE DATA; Schema: zlogistik_man; Owner: postgres
--

COPY zlogistik_man.clientes (id, created_at, updated_at, rut, nombre_fantasia, razon_social, direccion) FROM stdin;
1	2022-12-07 17:05:25	2022-12-13 01:01:37	11254785-9	Cliente	Razón Social del cliente	Av 1, edificio 1, piso 1, oficina 1
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: zlogistik_man; Owner: postgres
--

COPY zlogistik_man.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: idiomas; Type: TABLE DATA; Schema: zlogistik_man; Owner: postgres
--

COPY zlogistik_man.idiomas (id, idioma, abreviatura, activo, fecha_creacion, fecha_modificacion) FROM stdin;
2	ESPAÑOL	es	1	2022-12-18 03:41:35.235415	\N
1	ENGLISH	en	1	2022-12-17 10:01:59.787579	\N
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: zlogistik_man; Owner: postgres
--

COPY zlogistik_man.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
5	2022_12_16_224353_create_clientes_table	0
6	2022_12_16_224353_create_traducciones_table	0
7	2022_12_16_224353_create_idiomas_table	0
8	2022_12_16_224354_add_foreign_keys_to_traducciones_table	0
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: zlogistik_man; Owner: postgres
--

COPY zlogistik_man.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: zlogistik_man; Owner: postgres
--

COPY zlogistik_man.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: traducciones; Type: TABLE DATA; Schema: zlogistik_man; Owner: postgres
--

COPY zlogistik_man.traducciones (id, id_idioma, expresion, traduccion, ruta, nombre_ruta, activo, fecha_creacion, fecha_modificacion, id_archivo) FROM stdin;
2	1	3_min_ago	3 min ago	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
186	1	Topbar_Light	Topbar Light	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
187	1	TUI_Calendar	TUI Calendar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
276	2	Menu	Menú	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
450	2	Edit_Details	Editar detalles	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
452	2	Toasts	Toasts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
537	2	Translations	Traducciones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
538	2	Language_admin	Administración de Idiomas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
539	2	Language_full	Idioma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
3	1	Add_Product	Add Product	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
4	1	Advanced_Plugins	 Advanced Plugins	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
5	1	Advanced_Table	 Advanced Tables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
6	1	Alert_Email	Alert Email	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
7	1	Alerts	Alerts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
8	1	Apex_Charts	Apexcharts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
9	1	Applications	Applications	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
10	1	Apps	Apps	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
11	1	As_a_skeptical_Cambridge_friend_of_mine_occidental	As a skeptical Cambridge friend of mine occidental.	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
12	1	Authentication	Authentication	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
13	1	Basic_Action	Basic Action	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
14	1	Basic_Elements	Basic Elements	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
15	1	Billing_Email	Billing Email	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
16	1	Blog_Details	Blog Details	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
17	1	Blog_Grid	Blog Grid	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
18	1	Blog_List	Blog List	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
19	1	Blog	Blog	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
20	1	Blog	Blog	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
21	1	Bootstrap_Basic_Tables	Bootstrap Basic Tables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
22	1	Bootstrap_Basic	Bootstrap Basic	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
23	1	Basic_Tables	Basic Tables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
24	1	Bootstrap	Bootstrap	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
25	1	Boxed_Width	Boxed Width	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
26	1	Boxed_Width	Boxed Width	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
27	1	Boxicons	Boxicons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
540	2	Language_abbr	Abreviatura	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
541	2	Language_act	Activo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
542	2	Language_add	Crear idioma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
543	2	Language_edit	Editar idioma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
544	2	Language_created	Se ha creado el idioma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
545	2	Language_updated	Se ha actualizado el idioma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
546	2	Language_deleted	Se ha eliminado el idioma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
547	2	Translation_expression	Expresión	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
548	2	Translation_traduction	Traducción	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
549	2	Translation_admin	Administración de Traducciones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
28	1	Boxicons	Boxicons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
29	1	Buttons	Buttons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
30	1	Buy_Sell	Buy/Sell	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
31	1	Calendars	Calendar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
32	1	Cards	Cards	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
33	1	Carousel	Carousel	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
34	1	Cart	Cart	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
35	1	Chartjs_Charts	Chartjs	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
36	1	Chartjs	Chartjs	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
37	1	Charts	Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
38	1	Chat	Chat	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
39	1	Checkout	Checkout	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
40	1	Colored_Header	Colored Header	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
41	1	Colored_Sidebar	Colored Sidebar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
42	1	Colors	Colors	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
43	1	Coming_Soon	Coming Soon	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
44	1	Compact_Sidebar	Compact Sidebar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
45	1	Components	Components	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
46	1	Confirm_Mail	Confirm Mail	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
47	1	Contacts	Contacts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
48	1	Create_New	Create New	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
49	1	Create_Task	Create Task	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
50	1	Crypto	Crypto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
51	1	Crypto	Crypto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
52	1	Customers	Customers	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
53	1	Dashboards	Dashboard	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
54	1	Data_Tables	DataTables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
55	1	Default	Default	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
56	1	Dripicons	Dripicons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
57	1	Dropdowns	Dropdowns	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
58	1	E_Charts	Echarts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
59	1	Echarts	Echarts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
60	1	Ecommerce	Ecommerce	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
61	1	Edit_Details	Edit Details	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
62	1	Editable_Table	Editable Tables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
63	1	Editable	Editable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
64	1	Editors	Editors	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
65	1	Elements	Elements	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
66	1	Email_verification	Email Verification	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
67	1	Email	Email	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
68	1	Error_404	Error 404	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
69	1	Error_500	Error 500	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
70	1	Exchange	Exchange	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
71	1	Extended	Extended	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
72	1	Extra_Pages	Extra Pages	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
73	1	FAQs	FAQs	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
74	1	Feather	Feather	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
75	1	File_Manager	File Manager	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
76	1	File_Upload	File Upload	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
77	1	Flot_Charts	Flot Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
78	1	Font_awesome	Font Awesome	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
79	1	Form_Advanced	Form Advanced	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
80	1	Form_Editors	Form Editors	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
81	1	Form_Elements	Form Elements	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
82	1	Form_File_Upload	Form File Upload	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
83	1	Form_Layouts	Form Layouts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
84	1	Form_Mask	Form Mask	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
85	1	Form_Repeater	Form Repeater	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
86	1	Form_Validation	Form Validation	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
87	1	Form_Wizard	Form Wizard	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
88	1	Form_Xeditable	Form Xeditable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
89	1	Forms_Advanced_Plugins	Form Advanced Plugins	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
90	1	Forms	Forms	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
91	1	Full_Calendar	Full Calendar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
92	1	General	General	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
93	1	Google_Maps	Google Maps	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
94	1	Google	Google	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
95	1	Google	Google	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
96	1	Grid	Grid	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
97	1	Horizontal_layout	Horizontal layout	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
98	1	Horizontal	Horizontal	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
99	1	ICO_Landing	ICO Landing	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
100	1	Icon_Sidebar	Icon Sidebar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
101	1	Icons	Icons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
102	1	Icons	Icons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
103	1	If_several_languages_coalesce_the_grammar	If several languages coalesce the grammar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
104	1	Images	Images	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
105	1	Inbox	Inbox	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
106	1	Invoice_Detail	Invoice Detail	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
107	1	Invoice_List	Invoice List	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
108	1	Invoices	Invoices	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
109	1	It_will_seem_like_simplified_English	It will seem like simplified English.	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
110	1	James_Lemire	James Lemire	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
111	1	Jquery_Knob_Charts	Jquery Knob	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
112	1	Jquery_Knob	Jquery Knob	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
113	1	Kanban_Board	Kanban Board	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
114	1	KYC_Application	KYC Application	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
115	1	Layouts	Layouts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
116	1	Leaflet_Maps	Leaflet Maps	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
117	1	Leaflet	Leaflet 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
118	1	Leaflet	Leaflet	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
119	1	Lending	Lending	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
120	1	Level_1.1	Level 1.1	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
121	1	Level_1.2	Level 1.2	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
122	1	Level_2.1	Level 2.1	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
123	1	Level_2.2	Level 2.2	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
124	1	Light_Sidebar	Light Sidebar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
125	1	Lightbox	Lightbox	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
126	1	Lock_screen	Lock screen	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
127	1	Lock_Screen	Lock Screen	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
128	1	Login	Login	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
129	1	Logout	Log Out	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
130	1	Maintenance	Maintenance	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
131	1	Maps	Maps	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
132	1	Mask	Mask	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
133	1	Material_Design	Material Design	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
134	1	Material_Design	Material Design	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
135	1	Mega_Menu	Mega Menu	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
136	1	Menu	Menu	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
137	1	Modals	Modals	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
138	1	Multi_Level	Multi Level	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
139	1	My_Wallet	My Wallet	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
140	1	New	New	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
141	1	Notifications	Notifications	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
142	1	Offcanvas	Offcanvas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
143	1	Orders	Orders	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
144	1	Orders	Orders	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
145	1	Pages	Pages	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
146	1	Placeholders	Placeholders	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
147	1	Preloader	Preloader	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
148	1	Preloader	Preloader	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
149	1	Pricing	Pricing	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
150	1	Product_Detail	Product Detail	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
151	1	Products	Products	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
152	1	Profile	Profile	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
153	1	Profile	Profile	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
154	1	Progress_Bars	Progress Bars	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
155	1	Project_Overview	Project Overview	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
156	1	Projects_Grid	Projects Grid	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
157	1	Projects_List	Projects List	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
158	1	Projects	Projects	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
159	1	Range_Slider	Range Slider	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
160	1	Rating	Rating	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
161	1	Read_Email	Read Email	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
162	1	Recover_Password	Recover Password	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
163	1	Register	Register	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
164	1	Responsive_Table	Responsive Tables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
165	1	Responsive	Responsive	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
166	1	Saas	Saas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
167	1	Salena_Layfield	Salena Layfield	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
168	1	Scrollable	Scrollable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
169	1	Scrollable	Scrollable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
170	1	Search	Search...	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
171	1	Session_Timeout	Session Timeout	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
172	1	Settings	Settings	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
173	1	Shops	Shops	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
174	1	Sparkline_Charts	Sparkline Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
175	1	Sparkline	Sparkline	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
176	1	Starter_Page	Starter Page	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
177	1	Sweet_Alert	SweetAlert	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
178	1	Tables	Tables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
179	1	Tabs_&_Accordions	Tabs & Accordions	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
180	1	Task_List	Task List	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
181	1	Tasks	Tasks	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
182	1	Templates	Templates	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
183	1	Timeline	Timeline	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
184	1	Toast_UI_Charts	Toast UI Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
185	1	Toasts	Toasts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
188	1	Two_step_verification	Two Step Verification	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
189	1	Typography	Typography	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
190	1	UI_Components	UI Components	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
191	1	UI_Elements	UI Elements	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
192	1	User_Grid	User Grid	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
193	1	User_List	User List	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
194	1	Utility	Utility	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
195	1	Validation	Validation	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
196	1	Vector_Maps	Vector Maps	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
197	1	Vector	Vector 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
198	1	Video	Video	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
199	1	View_All	View All	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
200	1	View_More	View More..	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
201	1	Wallet	Wallet	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
202	1	Wizard	Wizard	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
203	1	Your_item_is_shipped	Your item is shipped	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
204	1	Your_order_is_placed	Your order is placed	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
205	1	Line_Charts	Line Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
206	1	Line	Line	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
207	1	Area	Area	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
208	1	Area_Charts	Area Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
209	1	Column_Chart	Column Chart	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
210	1	Column	Column 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
211	1	Mixed	Mixed	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
212	1	Mixed_Chart	Mixed Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
213	1	Timeline	Timeline	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
214	1	Timeline_Charts	Timeline Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
215	1	Candlestick	Candlestick	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
216	1	Candlestick_Charts	Candlestick Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
217	1	Boxplot	Boxplot	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
218	1	Boxplot_Charts	Boxplot Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
219	1	Bubble	Bubble	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
220	1	Bubble_Charts	Bubble Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
221	1	Scatter	Scatter	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
222	1	Scatter_Charts	Scatter Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
223	1	Heatmap	Heatmap	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
224	1	Heatmap_Charts	Heatmap Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
225	1	Treemap_Charts	Treemap Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
226	1	Treemap	Treemap 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
227	1	Pie_Charts	Pie Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
228	1	Pie	Pie 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
229	1	Radialbar_Charts	Radiabar Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
230	1	Radialbar	Radialbar 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
231	1	Radar_Charts	Radar Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
232	1	Radar	Radar 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
233	1	Polararea_Charts	Polararea Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
234	1	Polararea	Polararea 	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
235	1	Bar	Bar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
236	1	Bar_Charts	Bar Charts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
237	1	Eva_Icons	Eva Icons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
238	1	Client_menu	Clients (new)	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
239	1	Client_created	Client has been created	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
240	1	Client_updated	Client has been updated	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
241	1	Client_deleted	Client has been deleted	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
242	1	Client_admin	Client Administration	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
243	1	Client_fantasy	Fantasy name	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
244	1	Client_name	Client name	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
245	1	Client_address	Address	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
246	1	Client_add	Create client	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
247	1	Client_edit	Update client	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
248	1	Actions	Actions	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
249	1	Actions_add	Add	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
250	1	Actions_edit	Edit	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
251	1	Actions_update	Update	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
252	1	Actions_delete	Delete	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
253	1	Confirm_delete_title	Are you shure you want to delete this record?	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
254	1	Confirm_delete_text	This action cant be reverted	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
255	1	Confirm_delete_button	Delete	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
256	1	Confirm_cancel_button	Cancel	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
257	1	Show_confirm_deleted_title	Record deleted	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
259	1	Multilingual	Multilingual	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
260	1	Languages	Languages	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
261	1	Translations	Translations	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
262	1	Language_admin	Language Administration	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
263	1	Language_full	Language	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
264	1	Language_abbr	Abbreviation	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
265	1	Language_act	Active	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
266	1	Language_add	Create language	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
267	1	Language_edit	Edit language	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
268	1	Language_created	Language has been created	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
269	1	Language_updated	Language has been updated	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
270	1	Language_deleted	Language has been deleted	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
271	1	Translation_expression	Expression	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
272	1	Translation_traduction	Traduction	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
273	1	Translation_admin	Traductions Administration	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
275	1	Translation_edit	Edit traduction	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
277	2	Dashboards	Tablero	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
278	2	Default	Defecto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
279	2	Saas	Saas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
280	2	Crypto	Cripto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
281	2	Blog	Blog	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
282	2	Layouts	Diseños	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
283	2	Vertical	Vertical	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
284	2	Light_Sidebar	Barra lateral ligera	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
285	2	Compact_Sidebar	Barra lateral compacta	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
286	2	Icon_Sidebar	Barra lateral de iconos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
287	2	Boxed_Width	Ancho en caja	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
288	2	Preloader	Precargador	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
289	2	Colored_Sidebar	Barra lateral coloreada	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
290	2	Scrollable	Desplazable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
291	2	Horizontal	Horizontal	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
292	2	Topbar_Light	Barra superior ligera	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
293	2	Boxed_Width	Ancho en caja	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
294	2	Preloader	Precargador	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
295	2	Colored_Header	Encabezado de color	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
296	2	Scrollable	Desplazable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
297	2	Apps	Aplicaciones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
298	2	Calendars	Calendarios	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
299	2	TUI_Calendar	Calendario TUI	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
300	2	Full_Calendar	Calendario completo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
301	2	Chat	Chat	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
302	2	New	Nuevo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
303	2	File_Manager	Administrador de archivos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
304	2	Ecommerce	Comercio electrónico	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
305	2	Products	Productos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
306	2	Product_Detail	Detalle del producto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
307	2	Orders	Pedidos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
308	2	Customers	Clientes	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
309	2	Cart	Carro	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
310	2	Checkout	Revisión	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
311	2	Shops	Tiendas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
312	2	Add_Product	Agregar producto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
313	2	Crypto	Cripto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
314	2	Wallet	Billetera	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
315	2	Buy_Sell	Compra venta	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
316	2	Exchange	Intercambiar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
317	2	Lending	Préstamo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
318	2	Orders	Pedidos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
319	2	KYC_Application	Aplicación KYC	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
320	2	ICO_Landing	Aterrizaje de ICO	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
321	2	Email	Email	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
322	2	Inbox	Bandeja de entrada	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
323	2	Read_Email	Leer el correo electrónico	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
324	2	Templates	Plantillas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
325	2	Basic_Action	Acción básica	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
326	2	Alert_Email	Correo electrónico de alerta	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
327	2	Billing_Email	Correo Electrónico de Facturación	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
328	2	Invoices	Facturas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
329	2	Invoice_List	Lista de facturas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
330	2	Invoice_Detail	Detalle de la factura	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
331	2	Projects	Proyectos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
332	2	Projects_Grid	Cuadrícula de proyectos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
333	2	Projects_List	Lista de proyectos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
334	2	Project_Overview	Descripción del proyecto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
335	2	Create_New	Crear nuevo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
336	2	Tasks	Tareas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
337	2	Task_List	Lista de tareas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
338	2	Kanban_Board	Tablero Kanban	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
339	2	Create_Task	Crear tarea	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
340	2	Contacts	Contactos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
341	2	User_Grid	Cuadrícula de usuario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
342	2	User_List	Lista de usuarios	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
343	2	Profile	Perfil	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
344	2	Blog	Blog	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
345	2	Blog_List	Lista de blogs	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
346	2	Blog_Grid	Blog Grid	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
347	2	Blog_Details	Detalles del blog	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
348	2	Pages	Páginas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
349	2	Authentication	Autenticación	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
350	2	Login	Iniciar sesión	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
351	2	Register	Registrarse	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
352	2	Recover_Password	Recuperar contraseña	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
353	2	Lock_Screen	Bloquear pantalla	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
354	2	Confirm_Mail	Confirmar correo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
355	2	Email_verification	Verificacion de email	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
356	2	Two_step_verification	Verificación de dos pasos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
357	2	Utility	Utilidad	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
358	2	Starter_Page	Página de inicio	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
359	2	Maintenance	Mantenimiento	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
360	2	Coming_Soon	Próximamente	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
361	2	Timeline	Cronología	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
362	2	FAQs	Preguntas frecuentes	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
363	2	Pricing	Precios	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
364	2	Error_404	Error 404	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
365	2	Error_500	Error 500	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
366	2	Components	Componentes	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
367	2	UI_Elements	Elementos de la interfaz de usuario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
368	2	Alerts	Alertas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
369	2	Buttons	Botones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
370	2	Cards	Tarjetas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
371	2	Carousel	Carrusel	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
372	2	Dropdowns	Listas deplegables	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
373	2	Grid	Cuadrícula	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
374	2	Images	Imagenes	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
375	2	Lightbox	Caja ligera	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
376	2	Modals	Modales	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
377	2	Offcanvas	Fuera del lienzo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
378	2	Range_Slider	Control deslizante	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
379	2	Session_Timeout	Hora de término de la sesión	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
380	2	Progress_Bars	Barras de progreso	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
381	2	Sweet_Alert	Alerta Avanzada	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
382	2	Tabs_&_Accordions	Pestañas y acordeones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
383	2	Typography	Tipografía	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
384	2	Video	Vídeo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
385	2	General	General	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
386	2	Colors	Colores	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
387	2	Rating	Clasificación	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
388	2	Notifications	Notificaciones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
389	2	Forms	Formularios	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
390	2	Form_Elements	Elementos de formulario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
391	2	Form_Layouts	Diseños de formulario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
392	2	Form_Validation	Validación de formulario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
393	2	Form_Advanced	Formulario avanzado	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
394	2	Form_Editors	Editores de formularios	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
395	2	Form_File_Upload	Carga de archivo de formulario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
396	2	Form_Xeditable	Formulario Xeditable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
397	2	Form_Repeater	Repetidor de formulario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
398	2	Form_Wizard	Asistente de formulario	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
399	2	Form_Mask	Máscara de forma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
400	2	Tables	Tablas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
401	2	Basic_Tables	Tablas básicas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
402	2	Data_Tables	Tablas de datos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
403	2	Responsive_Table	Tabla responsiva	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
404	2	Responsive	 Responsiva	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
405	2	Editable_Table	Tabla editable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
406	2	Charts	Gráficos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
407	2	Apex_Charts	Gráficos de Apex	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
408	2	E_Charts	Gráficos E	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
409	2	Chartjs_Charts	Gráficos de Chartjs	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
410	2	Flot_Charts	Gráficos de Flot	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
411	2	Toast_UI_Charts	Gráficos de interfaz de usuario de Toast	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
412	2	Jquery_Knob_Charts	perillas de Jquery	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
413	2	Sparkline_Charts	Minigráficos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
414	2	Icons	Iconos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
415	2	Boxicons	Boxicones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
416	2	Material_Design	Material Design	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
417	2	Dripicons	Dripicons	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
418	2	Font_awesome	Font Awesome	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
419	2	Maps	Mapas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
420	2	Google	 Google	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
421	2	Vector	 vectoriales	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
422	2	Leaflet	 Leaflet	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
423	2	Multi_Level	Multi nivel	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
424	2	Level_1.1	Nivel 1.1	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
425	2	Level_1.2	Nivel 1.2	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
426	2	Level_2.1	Nivel 2.1	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
427	2	Level_2.2	Nivel 2.2	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
428	2	Search	Buscar...	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
429	2	Mega_Menu	Mega menú	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
430	2	UI_Components	Componentes de UI	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
431	2	Applications	Aplicaciones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
432	2	Extra_Pages	Páginas extra	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
433	2	Horizontal_layout	Disposición horizontal	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
434	2	View_All	Ver todo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
435	2	Your_order_is_placed	Se realiza tu pedido	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
436	2	If_several_languages_coalesce_the_grammar	Si varios idiomas fusionan la gramática	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
437	2	3_min_ago	Hace 3 minutos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
438	2	James_Lemire	James Lemire	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
439	2	It_will_seem_like_simplified_English	Parecerá inglés simplificado.	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
440	2	1_hours_ago	Hace 1 hora	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
441	2	Your_item_is_shipped	El artículo ha sido enviado	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
442	2	Salena_Layfield	Salena Layfield	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
443	2	As_a_skeptical_Cambridge_friend_of_mine_occidental	Como escéptico amigo mío occidental de Cambridge.	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
444	2	View_More	Ver más..	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
445	2	Profile	Perfil	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
446	2	My_Wallet	Mi billetera	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
447	2	Settings	Configuraciones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
448	2	Lock_screen	Bloquear pantalla	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
449	2	Logout	Cerrar sesión	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
451	2	Placeholders	Marcadores de posición	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
453	2	Bootstrap	Bootstrap	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
454	2	Extended	Extendido	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
455	2	Basic_Elements	Elementos basicos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
456	2	Validation	Validación	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
457	2	Forms_Advanced_Plugins	Formularios con Complementos Avanzados	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
458	2	Advanced_Plugins	 Complementos avanzados	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
459	2	Editors	Editores	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
460	2	File_Upload	Subir archivo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
461	2	Wizard	Asistente	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
462	2	Mask	Máscara	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
463	2	Editable	Editable	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
464	2	Echarts	Echarts	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
465	2	Chartjs	Chartjs	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
466	2	Jquery Knob	Perilla Jquery	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
467	2	Sparkline	Minigráfico	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
468	2	Icons	Iconos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
469	2	Feather	Pluma	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
470	2	Boxicons	Boxicones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
471	2	Material Design	Diseño de materiales	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
472	2	Google	Google	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
473	2	Vector	Vector	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
474	2	Leaflet	Leaflet	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
475	2	Elements	Elementos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
476	2	Google_Maps	mapas de Google	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
477	2	Vector_Maps	Mapas vectoriales	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
478	2	Leaflet_Maps	Mapas de Leaflet	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
479	2	Bootstrap_Basic_Tables	Tablas Bootstrap Básicas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
480	2	Advanced_Table	Tabla avanzada	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
481	2	Line_Charts	Gráficos de líneas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
482	2	Line	Gráficos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
483	2	Area	área	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
484	2	Area_Charts	Gráficos de área	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
485	2	Column_Chart	Columna	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
486	2	Column	Gráfico de columnas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
487	2	Mixed	Mezclado	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
488	2	Mixed_Chart	Gráfico mixto	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
489	2	Timeline	Cronología	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
490	2	Timeline_Charts	Gráfico de línea de tiempo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
491	2	Candlestick	Candelero	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
492	2	Candlestick_Charts	Gráfico de velas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
493	2	Boxplot	diagrama de caja	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
494	2	Boxplot_Charts	Gráfico de diagrama de caja	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
495	2	Bubble	Burbuja	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
496	2	Bubble_Charts	Gráfico de burbujas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
497	2	Scatter	Dispersión	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
498	2	Scatter_Charts	Gráfico de dispersión	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
499	2	Heatmap	Mapa de calor	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
500	2	Heatmap_Charts	Gráfico de mapa de calor	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
501	2	Treemap_Charts	Mapa de árbol	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
502	2	Treemap	Gráfico de mapa de árbol	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
503	2	Pie_Charts	Tarta	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
504	2	Pie	Gráfico circular	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
505	2	Radialbar_Charts	barra radial	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
506	2	Radialbar	Gráfico de barras radiales	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
507	2	Radar_Charts	Radar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
508	2	Radar	Carta de radar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
509	2	Polararea_Charts	área polar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
510	2	Polararea	Gráfico de área polar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
511	2	Bar	bar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
512	2	Bar_Charts	gráficos de efectivo	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
513	2	Eva_Icons	Eva_Iconos	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
514	2	Client_menu	Clientes (nuevo)	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
515	2	Client_created	Se ha creado el cliente	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
516	2	Client_updated	Se ha actualizado el cliente	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
517	2	Client_deleted	El cliente ha sido eliminado	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
518	2	Client_admin	Administración de clientes	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
519	2	Client_fantasy	Nombre Fantasía	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
520	2	Client_name	Razón social	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
521	2	Client_address	Dirección	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
522	2	Client_add	Crear cliente	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
523	2	Client_edit	Editar cliente	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
524	2	Actions	Acciones	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
525	2	Actions_add	Agregar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
526	2	Actions_edit	Editar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
527	2	Actions_update	Actualizar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
528	2	Actions_delete	Borrar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
529	2	Confirm_delete_title	¿Está seguro de que desea eliminar este registro?	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
530	2	Confirm_delete_text	Esta acción no puede deshacerse	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
531	2	Confirm_delete_button	Eliminar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
532	2	Confirm_cancel_button	Cancelar	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
533	2	Show_confirm_deleted_title	Registro eliminado	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
535	2	Multilingual	Multilenguaje	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
536	2	Languages	Idiomas	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
550	2	Translation_add	Crear traducción	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
551	2	Translation_edit	Editar traducción	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
552	1	Translation_generate	Generate translations	\N	\N	1	2022-12-19 16:31:44.401387	\N	4
1	1	1_hours_ago	1 hours ago	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
534	2	Show_Confirm_deleted_text	El registro ha sido eliminado exitosamente; recuerde generar el archivo de idiomas para que los cambios tengan efecto.	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
258	1	Show_Confirm_deleted_text	The record has been successfully deleted; remember to generate the language file for the changes to take effect.	\N	\N	1	2022-12-19 14:04:18.025549	\N	4
557	1	Translation_file_generated_title	Translation file generated	\N	\N	1	2022-12-20 14:44:26.780842	\N	4
558	1	Translation_file_generated_text	Translation file has been successfully generated	\N	\N	1	2022-12-20 14:45:05.815561	\N	4
559	1	TransFile_admin	Translation Files Administration	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
560	1	TransFile_created	Translation file has been created	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
561	1	TransFile_updated	Translation file has been updated	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
562	1	TransFile_deleted	Create Translate file	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
564	2	TransFile_admin	Administraciónn de Archivos de Traducción	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
565	2	TransFile_created	Se ha creado el archivo de traducción	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
566	2	TransFile_updated	Se ha actualizado el archivo de traducción	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
567	2	TransFile_deleted	Crear archivo de traducción	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
568	2	TransFile_add	Editar archivo de traducción	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
569	1	TransFile	Files	\N	\N	1	2022-12-21 09:02:13.551377	\N	4
570	2	TransFile	Archivos	\N	\N	1	2022-12-21 09:02:28.240608	\N	4
571	1	Translation_add	Add translation	\N	\N	1	2022-12-21 09:32:17.231024	\N	4
572	1	TransFile_file	File	\N	\N	1	2022-12-21 09:32:55.159685	\N	4
573	2	TransFile_description	Description	\N	\N	1	2022-12-21 09:33:51.54794	\N	4
574	1	TransFile_description	Description	\N	\N	1	2022-12-21 09:36:01.000406	\N	4
563	1	TransFile_add	Add translation file	\N	\N	1	2022-12-21 08:51:51.322634	\N	4
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: zlogistik_man; Owner: postgres
--

COPY zlogistik_man.users (id, name, email, email_verified_at, password, avatar, remember_token, created_at, updated_at) FROM stdin;
1	admin	admin@themesbrand.com	\N	$2y$10$W9Q/ZguP2p6X/ducK5GVzOBv2TIsqVhX481tKR6/Wc1PjmDgjnCje	avatar-1.jpg	\N	2022-12-08 12:16:47	2022-12-08 12:16:47
\.


--
-- Name: archivos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.archivos_id_seq', 5, true);


--
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_seq', 25, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: idiomas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.idiomas_id_seq', 3, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 8, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: traducciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.traducciones_id_seq', 574, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: archivos_id_seq; Type: SEQUENCE SET; Schema: zlogistik_man; Owner: postgres
--

SELECT pg_catalog.setval('zlogistik_man.archivos_id_seq', 5, true);


--
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: zlogistik_man; Owner: postgres
--

SELECT pg_catalog.setval('zlogistik_man.clientes_id_seq', 25, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: zlogistik_man; Owner: postgres
--

SELECT pg_catalog.setval('zlogistik_man.failed_jobs_id_seq', 1, false);


--
-- Name: idiomas_id_seq; Type: SEQUENCE SET; Schema: zlogistik_man; Owner: postgres
--

SELECT pg_catalog.setval('zlogistik_man.idiomas_id_seq', 3, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: zlogistik_man; Owner: postgres
--

SELECT pg_catalog.setval('zlogistik_man.migrations_id_seq', 8, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: zlogistik_man; Owner: postgres
--

SELECT pg_catalog.setval('zlogistik_man.personal_access_tokens_id_seq', 1, false);


--
-- Name: traducciones_id_seq; Type: SEQUENCE SET; Schema: zlogistik_man; Owner: postgres
--

SELECT pg_catalog.setval('zlogistik_man.traducciones_id_seq', 574, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: zlogistik_man; Owner: postgres
--

SELECT pg_catalog.setval('zlogistik_man.users_id_seq', 1, true);


--
-- Name: archivos archivos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archivos
    ADD CONSTRAINT archivos_pkey PRIMARY KEY (id);


--
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: idiomas idiomas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.idiomas
    ADD CONSTRAINT idiomas_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: traducciones traducciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.traducciones
    ADD CONSTRAINT traducciones_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: archivos archivos_pkey; Type: CONSTRAINT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.archivos
    ADD CONSTRAINT archivos_pkey PRIMARY KEY (id);


--
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: idiomas idiomas_pkey; Type: CONSTRAINT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.idiomas
    ADD CONSTRAINT idiomas_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: traducciones traducciones_pkey; Type: CONSTRAINT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.traducciones
    ADD CONSTRAINT traducciones_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: zlogistik_man; Owner: postgres
--

CREATE INDEX password_resets_email_index ON zlogistik_man.password_resets USING btree (email);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: zlogistik_man; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON zlogistik_man.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: traducciones idiomas_traducciones; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.traducciones
    ADD CONSTRAINT idiomas_traducciones FOREIGN KEY (id_idioma) REFERENCES public.idiomas(id);


--
-- Name: traducciones idiomas_traducciones; Type: FK CONSTRAINT; Schema: zlogistik_man; Owner: postgres
--

ALTER TABLE ONLY zlogistik_man.traducciones
    ADD CONSTRAINT idiomas_traducciones FOREIGN KEY (id_idioma) REFERENCES zlogistik_man.idiomas(id);


--
-- PostgreSQL database dump complete
--

