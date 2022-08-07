const helper = async (victim: any, attacker: any) => {
  // @ts-ignore:next-line
  for await (const с of [...Array(10).keys()]) {
    await attacker.hackContract();
  }
};

export default helper;
