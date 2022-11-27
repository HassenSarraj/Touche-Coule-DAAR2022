import 'dotenv/config'
import { DeployFunction } from 'hardhat-deploy/types'

const deployer: DeployFunction = async hre => {
  if (hre.network.config.chainId !== 31337) return
  const { deployer } = await hre.getNamedAccounts()
  await hre.deployments.deploy('Main', { from: deployer, log: true })
  await hre.deployments.deploy('Myship',  { from: deployer, log: true })
  await hre.deployments.deploy('Myship2',  { from: deployer, log: true })
  await hre.deployments.deploy('Myship3',  { from: deployer, log: true })
  await hre.deployments.deploy('Myship4',  { from: deployer, log: true })
}

export default deployer
