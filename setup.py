import setuptools

setuptools.setup(
    name='mac-brave',
    install_requires=open('requirements.txt').read().splitlines(),
    packages=setuptools.find_packages(),
    scripts=['scripts/.DS_Store','scripts/.brave-close.applescript','scripts/.brave-fullscreen-detect.applescript','scripts/.brave-fullscreen-enter.applescript','scripts/.brave-fullscreen-exit.applescript','scripts/.brave-isready.applescript','scripts/.brave-noisy-tabs.applescript','scripts/.brave-open.applescript','scripts/.brave-refresh.applescript','scripts/.brave-url.applescript','scripts/.brave-urls.applescript','scripts/brave','scripts/brave-close','scripts/brave-frontmost','scripts/brave-fullscreen-detect','scripts/brave-fullscreen-enter','scripts/brave-fullscreen-exit','scripts/brave-isready','scripts/brave-kill','scripts/brave-noisy-tabs','scripts/brave-open','scripts/brave-pid','scripts/brave-refresh','scripts/brave-url','scripts/brave-urls']
)
