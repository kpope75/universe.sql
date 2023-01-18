--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_type integer,
    distance_from_earth numeric,
    galaxy_description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    moon_size integer,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: other; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other (
    other_id integer NOT NULL,
    name character varying NOT NULL,
    other_type integer
);


ALTER TABLE public.other OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    planet_type integer,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    star_type integer,
    diameter_in_mi numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'b', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'c', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'd', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'e', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'f', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'b', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'c', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'd', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'e', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'f', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'g', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'h', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'i', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'j', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'k', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'l', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'm', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'n', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'o', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'p', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'q', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'r', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 's', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 't', NULL, NULL, NULL);


--
-- Data for Name: other; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other VALUES (1, 'a', NULL);
INSERT INTO public.other VALUES (2, 'b', NULL);
INSERT INTO public.other VALUES (3, 'c', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'b', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'c', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'd', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'e', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'f', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'g', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'h', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'i', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'j', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'k', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'l', NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'b', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'c', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'd', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'e', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'f', NULL, NULL, NULL);


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_has_life_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_has_life_key UNIQUE (has_life);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: other other_other_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_other_type_key UNIQUE (other_type);


--
-- Name: other other_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_pkey PRIMARY KEY (other_id);


--
-- Name: planet planet_has_life_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_has_life_key UNIQUE (has_life);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_diameter_in_mi_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_diameter_in_mi_key UNIQUE (diameter_in_mi);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

