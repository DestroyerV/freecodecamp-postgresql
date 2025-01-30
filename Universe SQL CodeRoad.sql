--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(100) NOT NULL,
    age numeric,
    description text,
    size numeric,
    type character varying(50) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age numeric,
    description text,
    has_life boolean,
    size numeric,
    distance_from_earth integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age numeric,
    description text,
    has_life boolean,
    size numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age numeric,
    description text,
    size numeric,
    no_planets integer NOT NULL
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age numeric,
    description text,
    size numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13.51, 'A barred spiral galaxy containing our Solar System.', 100000, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10.0, 'The nearest spiral galaxy to the Milky Way.', 220000, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 8.73, 'A member of the Local Group, known for its star formation.', 60000, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 13.25, 'A massive elliptical galaxy with a supermassive black hole.', 980000, 'Elliptical');
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 12.0, 'A bright spiral galaxy with a large central bulge.', 50000, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 10.0, 'A classic spiral galaxy with well-defined arms.', 76000, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4.5, 'The Earth’s only natural satellite.', false, 0.273, 384400, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 4.5, 'An icy moon of Jupiter, possibly harboring a subsurface ocean.', false, 0.245, 628730, 1);
INSERT INTO public.moon VALUES (3, 'Titan', 4.6, 'The largest moon of Saturn, with a thick atmosphere.', false, 0.404, 1275000, 1);
INSERT INTO public.moon VALUES (4, 'Io', 4.5, 'A volcanic moon of Jupiter, the most geologically active body in the Solar System.', false, 0.286, 628730, 1);
INSERT INTO public.moon VALUES (5, 'Phobos', 4.5, 'A small and irregularly shaped moon of Mars.', false, 0.011, 9376, 1);
INSERT INTO public.moon VALUES (6, 'Deimos', 4.5, 'A small and irregularly shaped moon of Mars.', false, 0.006, 23460, 1);
INSERT INTO public.moon VALUES (7, 'Ganymede', 4.5, 'The largest moon in the Solar System, orbiting Jupiter.', false, 0.413, 628730, 1);
INSERT INTO public.moon VALUES (8, 'Callisto', 4.5, 'A heavily cratered moon of Jupiter.', false, 0.378, 628730, 1);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4.5, 'A moon of Saturn with icy geysers suggesting subsurface water.', false, 0.040, 1275000, 1);
INSERT INTO public.moon VALUES (10, 'Triton', 4.5, 'The largest moon of Neptune, with retrograde orbit.', false, 0.212, 4300000, 1);
INSERT INTO public.moon VALUES (11, 'Charon', 4.5, 'The largest moon of Pluto, forming a binary system.', false, 0.121, 5913000, 1);
INSERT INTO public.moon VALUES (12, 'Miranda', 4.5, 'A small, icy moon of Uranus with a patchy surface.', false, 0.032, 2875000, 1);
INSERT INTO public.moon VALUES (13, 'Oberon', 4.5, 'The outermost large moon of Uranus.', false, 0.049, 2875000, 1);
INSERT INTO public.moon VALUES (14, 'Rhea', 4.5, 'A heavily cratered moon of Saturn.', false, 0.244, 1275000, 1);
INSERT INTO public.moon VALUES (15, 'Mimas', 4.5, 'A small moon of Saturn, nicknamed "Death Star" moon due to its large crater.', false, 0.031, 1275000, 1);
INSERT INTO public.moon VALUES (16, 'Iapetus', 4.5, 'A two-toned moon of Saturn.', false, 0.121, 1275000, 1);
INSERT INTO public.moon VALUES (17, 'Hyperion', 4.5, 'An irregularly shaped moon of Saturn.', false, 0.036, 1275000, 1);
INSERT INTO public.moon VALUES (18, 'Dione', 4.5, 'A moon of Saturn with a surface covered in ice.', false, 0.200, 1275000, 1);
INSERT INTO public.moon VALUES (19, 'Himalia', 4.5, 'A small moon of Jupiter.', false, 0.015, 628730, 1);
INSERT INTO public.moon VALUES (20, 'Nereid', 4.5, 'A distant and irregularly shaped moon of Neptune.', false, 0.034, 4300000, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4.5, 'The only planet known to support life, covered mostly by water.', true, 1.0, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4.6, 'Known as the Red Planet due to its reddish appearance.', false, 0.532, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 4.6, 'The largest planet in the Solar System, known for its Great Red Spot.', false, 11.21, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 4.6, 'Famous for its prominent ring system.', false, 9.45, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 4.5, 'Similar in size to Earth but with a toxic atmosphere and extreme heat.', false, 0.949, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', 4.6, 'The smallest planet in the Solar System and closest to the Sun.', false, 0.382, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 4.6, 'An ice giant with a vivid blue appearance.', false, 3.88, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 4.6, 'An ice giant that rotates on its side.', false, 4.01, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', 5.0, 'An exoplanet in the habitable zone of Proxima Centauri.', false, 1.2, 1);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1e', 7.6, 'One of the seven Earth-sized planets in the TRAPPIST-1 system.', true, 0.91, 1);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 5.0, 'A super-Earth exoplanet in the habitable zone of a sun-like star.', true, 2.4, 1);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', 7.0, 'A potentially habitable exoplanet orbiting Gliese 581.', true, 1.5, 1);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'Solar System', 4.6, 'The planetary system that includes Earth and revolves around the Sun.', 287.46, 8);
INSERT INTO public.solar_system VALUES (2, 'Alpha Centauri System', 6.0, 'The closest star system to the Solar System, containing Proxima Centauri.', 50.0, 1);
INSERT INTO public.solar_system VALUES (3, 'TRAPPIST-1 System', 7.6, 'A planetary system with seven Earth-sized planets, located 40 light-years away.', 0.004, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4.6, 'A G-type main-sequence star and the center of our Solar System.', 1.0, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 8.0, 'A red supergiant star in the Orion constellation.', 887.0, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 0.24, 'The brightest star in the night sky, located in the Canis Major constellation.', 1.7, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 4.85, 'The closest star to the Sun, part of the Alpha Centauri system.', 0.15, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 8.0, 'A blue supergiant star in the Orion constellation.', 78.9, 1);
INSERT INTO public.star VALUES (6, 'Polaris', 70.0, 'A yellow supergiant star known as the North Star.', 46.0, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: solar_system solar_system_solar_system_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_solar_system_id_key UNIQUE (solar_system_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

