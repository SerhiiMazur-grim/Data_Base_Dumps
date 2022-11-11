--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: actors; Type: TABLE; Schema: public; Owner: grimnebuulen
--

CREATE TABLE public.actors (
    name character varying(100) NOT NULL,
    film_name character varying(100) NOT NULL
);


ALTER TABLE public.actors OWNER TO grimnebuulen;

--
-- Name: directed; Type: TABLE; Schema: public; Owner: grimnebuulen
--

CREATE TABLE public.directed (
    name character varying(100) NOT NULL,
    film_name character varying(100) NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.directed OWNER TO grimnebuulen;

--
-- Name: films; Type: TABLE; Schema: public; Owner: grimnebuulen
--

CREATE TABLE public.films (
    film_name character varying(100) NOT NULL,
    year integer NOT NULL,
    running_time integer NOT NULL
);


ALTER TABLE public.films OWNER TO grimnebuulen;

--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: grimnebuulen
--

COPY public.actors (name, film_name) FROM stdin;
Keanu Reeves	The Devils Advocate
Keanu Reeves	The Matrix
Keanu Reeves	Constantine
Djimon Hounsou	Constantine
Rachel Weisz	Constantine
Rachel Weisz	Death Machine
Rachel Weisz	The Mummy
Djimon Hounsou	Gladiator
Djimon Hounsou	Guardians of the Galaxy
Glenn Close	Guardians of the Galaxy
Glenn Close	Cruella de Vil
Laurence Fishburne	The Matrix
Laurence Fishburne	Man of Steel
Laurence Fishburne	Ant-Man and the Wasp
\.


--
-- Data for Name: directed; Type: TABLE DATA; Schema: public; Owner: grimnebuulen
--

COPY public.directed (name, film_name, year) FROM stdin;
Peyton Reed	Ant-Man and the Wasp	2018
Peyton Reed	Fantastic Four	2005
Zack Snyder	Man of Steel	2013
Zack Snyder	Watchmen	2009
Craig Gillespie	Cruella	2021
Craig Gillespie	Fright Night	2011
Ridley Scott	Gladiator	2000
Ridley Scott	Alien	1979
Stephen Sommers	The Mummy	1999
Stephen Sommers	Van Helsing	2004
Stephen Norrington	Death Machine	1994
Stephen Norrington	Blade	1998
Francis Lawrence	Constantine	2005
Francis Lawrence	I Am Legend	2007
\.


--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: grimnebuulen
--

COPY public.films (film_name, year, running_time) FROM stdin;
Ant-Man and the Wasp	2018	118
The Matrix	1999	96
Constantine	2005	121
Death Machine	1994	120
The Mummy	1999	125
Gladiator	2000	155
Cruella de Vil	2021	134
Man of Steel	2013	143
Ant-Man and the Wasp	2018	118
\.


--
-- PostgreSQL database dump complete
--

