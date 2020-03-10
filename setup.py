import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name="nirah",
    version="0.0.1",
    author="Alexandra Vogt",
    author_email="projects@vogt.systems",
    description="A package for easily sending messages via the CLI or in python.",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/alexanra-vogt/arke",
    packages=setuptools.find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.6',
)
