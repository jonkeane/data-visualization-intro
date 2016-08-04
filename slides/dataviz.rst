:title: Introduction to Data Visualization
:author: Jon, Diego, Kris, Monica, and Ned 
:description: Topics in data visualization 
:keywords: visualizatoin, data
:css: style.css

----

Introduction to Data Visualization
==================================

----

Today
=====

* Data visualization theory
	* systematic visualization
	* human perception
* Visualization critiques
* Visualization in Python with MatPlotLib
* Visualization in R with ggplot2 and ggvis
* Visualization in Javascript with d3

----

Kinds of comparisons
====================

* quantitative or interval  
	* height, weight, age, income
* ordinal
	* education level, counts (sometimes)
* nominal
	* city, zip code, race, gender

----

Visual encoding
===============

.. image:: images/visual-variables.png


*adapted from: https://joeparry.wordpress.com/2007/08/29/visual-variables/*

----

Bars, bars everywhere!
======================

.. image:: images/carrier-origin-bars.png
	:height: 650px

----

Better...
======================

.. image:: images/carrier-origin-dots.png
	:height: 650px

----


Arrival delays
======================

.. image:: images/arr-delay-line.png
	:height: 650px

----

Now with SEs!
======================

.. image:: images/arr-delay-ribbon.png
	:height: 650px

----

Maybe bars are better?
======================

.. image:: images/arr-delay-bar.png
	:height: 650px

----


Now with more SEs!
======================

.. image:: images/arr-delay-bar-error.png
	:height: 650px

----

Closer... what happened??
=========================

.. image:: images/arr-delay-boxplot.png
	:height: 650px

----

Violin plots
======================

.. image:: images/arr-delay-violin.png
	:height: 650px

----

Zoomed in (use caution!)
==========================

.. image:: images/arr-delay-violin-cropped.png
	:height: 650px

----


Departure delays
======================

.. image:: images/dep-delay.png
	:height: 650px

----


Whoa there!
======================

.. image:: images/dep-delay-color.png
	:height: 650px

----

Facets! (aka small multiples)
=============================

.. image:: images/dep-delay-facet.png
	:height: 650px

----

In case we care about time more
===============================

.. image:: images/dep-delay-facet-other.png
	:height: 650px

----

And with the power of facets...
===============================

.. image:: images/dep-delay-origin-facet.png
	:height: 650px

----


Perception and visualization
============================
Within the bar bias
http://www.ncbi.nlm.nih.gov/pubmed/22648655
"Confidence Intervals and the Within-the-Bar Bias"


http://cs.usfca.edu/~apjoshi/cs686/lectures/Graphical_Integrity.pdf

Perceptual scaling: https://makingmaps.net/2007/08/28/perceptual-scaling-of-map-symbols/
http://blog.revolutionanalytics.com/2011/01/for-data-visualization-circles-dont-cut-it.html
http://www.perceptualedge.com/articles/08-21-07.pdf (no pie charts)

----

How big is the bigger circle?
=============================

.. image:: images/circleAreas.png
	:height: 650px
	
.. note:: Truth: 16, estimates usually range from 4-50

----


Good to do
==========

...and terrible to don't

----


Axis truncation
===============

.. image:: images/truncateY.jpg
	:height: 650px

----

If you have to put numbers...
=============================

You've failed womp. womp.

----

If you are using area as en encoding
====================================

Make sure you're actually using area and not height/width 

Even the white house go this one wrong...

----


Small multiples
===============

(time vs. coarticulation plot)

----

demos
==========
 
----

Visualization in Python with MatPlotLib
=======================================
Ned

----

Visualization in R with ggplot2 + ggvis
=======================================
Monica+Jon

----

Visualization in Javascript with d3
===================================
Diego+Kris

----

References
==========

* Visual encoding http://global.qlik.com/us/blog/posts/patrik-lundblad/visual-encoding
* Viridis https://www.youtube.com/watch?v=xAoljeRJ3lU
* Within the bar bias http://www.ncbi.nlm.nih.gov/pubmed/22648655
* Data viz trifecta: http://junkcharts.typepad.com/junk_charts/junk-charts-trifecta-checkup-the-definitive-guide.html

----

