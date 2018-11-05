--
-- PostgreSQL database dump
--

-- Dumped from database version 11.0
-- Dumped by pg_dump version 11.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: blogs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.blogs (
    blogid integer NOT NULL,
    blogtitle character varying(100),
    blogauthor character varying(100),
    blogdescription text,
    bloglikes integer DEFAULT 0
);


--
-- Name: blogs_postid_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.blogs_postid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: blogs_postid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.blogs_postid_seq OWNED BY public.blogs.blogid;


--
-- Name: blogs blogid; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blogs ALTER COLUMN blogid SET DEFAULT nextval('public.blogs_postid_seq'::regclass);


--
-- Data for Name: blogs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.blogs (blogid, blogtitle, blogauthor, blogdescription, bloglikes) FROM stdin;
7	joe	colca	THIS IS MY New BLOG....	45
8	MY BLOG	Mine	I Love to blog now!!!!!!!!	12
9	The best blog	Joe Colca	This is the bestest blog in the whole world!!!!!!	7
\.


--
-- Name: blogs_postid_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.blogs_postid_seq', 9, true);


--
-- Name: blogs blogs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_pkey PRIMARY KEY (blogid);


--
-- PostgreSQL database dump complete
--

